import 'dart:convert';
import 'dart:typed_data' show Uint8List;

import 'src/symbols.dart';

/// An instance of the default implementation of the [Windows1251Codec].
///
/// This instance provides a convenient access to the most common Windows-1251
/// use cases.
///
/// Examples:
/// ```dart
/// var encoded = windows1251.encode('Привет!');
/// var decoded = windows1251.decode([0xCF, 0xF0, 0xE8, 0xE2, 0xE5, 0xF2, 0x21]);
/// ```
const Windows1251Codec windows1251 = Windows1251Codec();

/// A `Windows1251Codec` encodes strings to Windows-1251 code units (bytes)
/// and decodes Windows-1251 code units to strings.
class Windows1251Codec extends Encoding {
  /// Instantiates a new [Windows1251Codec].
  ///
  /// If [allowInvalid] is true, the [decode] & [encode] methods and the
  /// converters returned by [decoder] & [encoder] will default to allowing
  /// invalid values. If allowing invalid values, the values will be decoded
  /// into the Unicode Replacement character (U+FFFD) and encoded into '?'
  /// character. If not, an exception will be thrown.
  const Windows1251Codec({this.allowInvalid = false});

  final bool allowInvalid;

  /// The name of this codec, 'windows1251'.
  @override
  String get name {
    return 'windows1251';
  }

  @override
  String decode(List<int> encoded, {bool? allowInvalid}) {
    var encoding = allowInvalid ?? this.allowInvalid
        ? const Windows1251Decoder(allowInvalid: true)
        : const Windows1251Decoder(allowInvalid: false);
    return encoding.convert(encoded);
  }

  @override
  Uint8List encode(String input, {bool? allowInvalid}) {
    var encoding = allowInvalid ?? this.allowInvalid
        ? const Windows1251Encoder(allowInvalid: true)
        : const Windows1251Encoder(allowInvalid: false);
    return encoding.convert(input);
  }

  @override
  Windows1251Decoder get decoder {
    return allowInvalid
        ? const Windows1251Decoder(allowInvalid: true)
        : const Windows1251Decoder(allowInvalid: false);
  }

  @override
  Windows1251Encoder get encoder {
    return allowInvalid
        ? const Windows1251Encoder(allowInvalid: true)
        : const Windows1251Encoder(allowInvalid: false);
  }
}

class Windows1251Encoder extends Converter<String, List<int>> {
  const Windows1251Encoder({this.allowInvalid = false});

  final bool allowInvalid;

  @override
  Uint8List convert(String input, [int start = 0, int? end]) {
    var runes = input.runes.toList(growable: false);
    end = RangeError.checkValidRange(start, end, runes.length);

    if (end - start == 0) {
      return Uint8List(0);
    }

    var bytes = Uint8List(end - start);

    for (var i = start; i < end; i++) {
      var rune = runes[i];
      var value = dictionary[rune];

      if (value == null) {
        if (allowInvalid) {
          bytes[i] = 0x3F;
        } else {
          throw ArgumentError.value(
              input, 'string', 'Contains invalid characters.');
        }
      } else {
        bytes[i] = value;
      }
    }

    return bytes;
  }

  @override
  StringConversionSink startChunkedConversion(Sink<List<int>> sink) {
    ByteConversionSink byteSink;

    if (sink is ByteConversionSink) {
      byteSink = sink;
    } else {
      byteSink = ByteConversionSink.from(sink);
    }

    return _EncoderSink(byteSink, this);
  }
}

class _EncoderSink extends StringConversionSinkBase {
  _EncoderSink(this.sink, this.encoder);

  final ByteConversionSink sink;

  final Windows1251Encoder encoder;

  @override
  void close() {
    sink.close();
  }

  @override
  void add(String str) {
    sink.add(encoder.convert(str));
  }

  @override
  void addSlice(String str, int start, int end, bool isLast) {
    sink.add(encoder.convert(str, start, end));

    if (isLast) {
      close();
    }
  }
}

class Windows1251Decoder extends Converter<List<int>, String> {
  const Windows1251Decoder({this.allowInvalid = false});

  final bool allowInvalid;

  @override
  String convert(List<int> input, [int start = 0, int? end]) {
    end = RangeError.checkValidRange(start, end, input.length);
    List<int>? modified;

    for (var i = start; i < end; i++) {
      var byte = input[i];

      if ((byte & ~0xFF) != 0) {
        if (!allowInvalid) {
          throw FormatException('Invalid value in input: $byte');
        } else {
          modified ??= input.toList(growable: false);
          modified[i] = 0xFFFD;
        }
      } else if (byte > 0x7F) {
        modified ??= input.toList(growable: false);
        modified[i] = symbols[byte - 0x80];
      }
    }

    return String.fromCharCodes(modified ?? input, start, end);
  }

  @override
  ByteConversionSink startChunkedConversion(Sink<String> sink) {
    StringConversionSink stringSink;

    if (sink is StringConversionSink) {
      stringSink = sink;
    } else {
      stringSink = StringConversionSink.from(sink);
    }

    return _DecoderSink(stringSink, allowInvalid, this);
  }
}

class _DecoderSink extends ByteConversionSinkBase {
  _DecoderSink(this.sink, this.allowInvalid, this.decoder);

  final StringConversionSink sink;

  final bool allowInvalid;

  final Windows1251Decoder decoder;

  @override
  void close() {
    sink.close();
  }

  @override
  void add(List<int> chunk) {
    sink.add(decoder.convert(chunk));
  }

  @override
  void addSlice(List<int> chunk, int start, int end, bool isLast) {
    sink.add(decoder.convert(chunk, start, end));

    if (isLast) {
      close();
    }
  }
}
