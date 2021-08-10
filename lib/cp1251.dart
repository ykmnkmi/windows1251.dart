import 'dart:convert';
import 'dart:typed_data' show Uint8List;

import 'src/symbols.dart';

/// An instance of the default implementation of the [CP1251Codec].
///
/// This instance provides a convenient access to the most common CP 1251
/// use cases.
///
/// Examples:
/// ```dart
/// var encoded = cp1251.encode('Привет!');
/// var decoded = cp1251.decode([0xCF, 0xF0, 0xE8, 0xE2, 0xE5, 0xF2, 0x21]);
/// ```
const CP1251Codec cp1251 = CP1251Codec();

/// A `CP1251Codec` encodes strings to Windows-1251 code units (bytes)
/// and decodes Windows-1251 code units to strings.
class CP1251Codec extends Encoding {
  /// Instantiates a new [CP1251Codec].
  ///
  /// If [allowInvalid] is true, the [decode] method and the converter
  /// returned by [decoder] will default to allowing invalid values.
  /// If allowing invalid values, the values will be decoded into the Unicode
  /// Replacement character (U+FFFD). If not, an exception will be thrown.
  /// Calls to the [decode] method can choose to override this default.
  ///
  /// Encoders will not accept invalid (non Windows-1251) characters.
  const CP1251Codec({this.allowInvalid = false});

  final bool allowInvalid;

  /// The name of this codec, 'cp1251'.
  @override
  String get name {
    return 'cp1251';
  }

  @override
  Uint8List encode(String input) {
    final encoding = allowInvalid
        ? const CP1251Encoder(allowInvalid: true)
        : const CP1251Encoder(allowInvalid: false);
    return encoding.convert(input);
  }

  @override
  String decode(List<int> encoded, {bool? allowInvalid}) {
    final encoding = allowInvalid ?? this.allowInvalid
        ? const CP1251Decoder(allowInvalid: true)
        : const CP1251Decoder(allowInvalid: false);
    return encoding.convert(encoded);
  }

  @override
  CP1251Encoder get encoder {
    return allowInvalid
        ? const CP1251Encoder(allowInvalid: true)
        : const CP1251Encoder(allowInvalid: false);
  }

  @override
  CP1251Decoder get decoder {
    return allowInvalid
        ? const CP1251Decoder(allowInvalid: true)
        : const CP1251Decoder(allowInvalid: false);
  }
}

class CP1251Encoder extends Converter<String, List<int>> {
  const CP1251Encoder({this.allowInvalid = false});

  final bool allowInvalid;

  @override
  Uint8List convert(String input, [int start = 0, int? end]) {
    var runes = input.runes.toList(growable: false);
    end = RangeError.checkValidRange(start, end, runes.length);

    if (end - start == 0) {
      return Uint8List(0);
    }

    final bytes = Uint8List(end - start);

    for (var i = start; i < end; i++) {
      final rune = runes[i];
      final value = dictionary[rune];

      if (value == null) {
        if (allowInvalid) {
          bytes[i] = 0x3F;
        } else {
          final message = 'Contains invalid characters.';
          throw ArgumentError.value(input, 'string', message);
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

  final CP1251Encoder encoder;

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

class CP1251Decoder extends Converter<List<int>, String> {
  const CP1251Decoder({this.allowInvalid = false});

  final bool allowInvalid;

  @override
  String convert(List<int> input, [int start = 0, int? end]) {
    end = RangeError.checkValidRange(start, end, input.length);
    List<int>? modified;

    for (var i = start; i < end; i++) {
      final byte = input[i];

      if ((byte & ~0xFF) != 0) {
        if (!allowInvalid) {
          final message = 'Invalid value in input: $byte';
          throw FormatException(message);
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

  final CP1251Decoder decoder;

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
