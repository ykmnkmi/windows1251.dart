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

/// A codec that encodes strings to Windows-1251 code units (bytes) and decodes
/// Windows-1251 code units to strings.
///
/// Windows-1251 is a character encoding used primarily for languages that use
/// the Cyrillic script, such as Russian, Bulgarian, Serbian Cyrillic, and
/// Macedonian.
///
/// Example:
/// ```dart
/// const codec = Windows1251Codec();
/// final encoded = codec.encode('Привет'); // Encodes to bytes
/// final decoded = codec.decode(encoded);  // Decodes back to string
/// ```
class Windows1251Codec extends Encoding {
  /// Creates a new [Windows1251Codec].
  ///
  /// If [allowInvalid] is `true`, the [decode] and [encode] methods and the
  /// converters returned by [decoder] and [encoder] will default to allowing
  /// invalid values. When allowing invalid values:
  /// - Invalid bytes during decoding are replaced with the Unicode Replacement
  ///   Character (U+FFFD)
  /// - Invalid characters during encoding are replaced with '?' (0x3F)
  ///
  /// If [allowInvalid] is `false` (the default), an exception is thrown when
  /// encountering invalid values.
  const Windows1251Codec({this.allowInvalid = false});

  /// Whether invalid values are allowed during encoding and decoding.
  final bool allowInvalid;

  /// The name of this codec: 'windows1251'.
  @override
  final String name = 'windows1251';

  /// Decodes the Windows-1251 [encoded] bytes to a string.
  ///
  /// If [allowInvalid] is provided, it overrides the codec's default behavior
  /// for handling invalid bytes.
  ///
  /// Throws [FormatException] if [encoded] contains invalid bytes and
  /// [allowInvalid] is `false`.
  @override
  String decode(List<int> encoded, {bool? allowInvalid}) {
    var encoding = allowInvalid ?? this.allowInvalid
        ? const Windows1251Decoder(allowInvalid: true)
        : const Windows1251Decoder(allowInvalid: false);
    return encoding.convert(encoded);
  }

  /// Encodes the string [input] to Windows-1251 bytes.
  ///
  /// If [allowInvalid] is provided, it overrides the codec's default behavior
  /// for handling invalid characters.
  ///
  /// Throws [ArgumentError] if [input] contains characters that cannot be
  /// encoded in Windows-1251 and [allowInvalid] is `false`.
  @override
  Uint8List encode(String input, {bool? allowInvalid}) {
    var encoding = allowInvalid ?? this.allowInvalid
        ? const Windows1251Encoder(allowInvalid: true)
        : const Windows1251Encoder(allowInvalid: false);
    return encoding.convert(input);
  }

  /// Returns a [Windows1251Decoder] with this codec's [allowInvalid] setting.
  @override
  Windows1251Decoder get decoder {
    return allowInvalid
        ? const Windows1251Decoder(allowInvalid: true)
        : const Windows1251Decoder(allowInvalid: false);
  }

  /// Returns a [Windows1251Encoder] with this codec's [allowInvalid] setting.
  @override
  Windows1251Encoder get encoder {
    return allowInvalid
        ? const Windows1251Encoder(allowInvalid: true)
        : const Windows1251Encoder(allowInvalid: false);
  }
}

/// A [Converter] that encodes strings to Windows-1251 bytes.
class Windows1251Encoder extends Converter<String, List<int>> {
  /// Creates a [Windows1251Encoder].
  ///
  /// If [allowInvalid] is `true`, characters that cannot be encoded in
  /// Windows-1251 are replaced with '?' (0x3F). If `false`, an
  /// [ArgumentError] is thrown for invalid characters.
  const Windows1251Encoder({this.allowInvalid = false});

  /// Whether to allow invalid characters during encoding.
  final bool allowInvalid;

  /// Converts the string [input] to Windows-1251 bytes.
  ///
  /// The [start] and [end] parameters specify the range of the input string
  /// to convert. If [end] is omitted, it defaults to the length of [input].
  ///
  /// Throws [ArgumentError] if [input] contains characters that cannot be
  /// encoded and [allowInvalid] is `false`.
  @override
  Uint8List convert(String input, [int start = 0, int? end]) {
    var runes = input.runes.toList(growable: false);
    end = RangeError.checkValidRange(start, end, runes.length);

    if (end - start == 0) {
      return Uint8List(0);
    }

    var bytes = Uint8List(end - start);

    for (var i = start; i < end; i++) {
      var value = dictionary[runes[i]];

      if (value != null) {
        bytes[i] = value;
      } else {
        if (allowInvalid) {
          bytes[i] = 0x3F;
        } else {
          throw ArgumentError.value(
            input,
            'input',
            'Contains invalid characters',
          );
        }
      }
    }

    return bytes;
  }

  /// Starts a chunked conversion.
  ///
  /// Returns a [StringConversionSink] that accepts string chunks and forwards
  /// the encoded bytes to [sink].
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

/// A sink for chunked string-to-bytes conversion using [Windows1251Encoder].
final class _EncoderSink extends StringConversionSinkBase {
  _EncoderSink(this.sink, this.encoder);

  /// The byte sink to forward encoded data to.
  final ByteConversionSink sink;

  /// The encoder to use for conversion.
  final Windows1251Encoder encoder;

  /// Closes this sink and the underlying [sink].
  @override
  void close() {
    sink.close();
  }

  /// Adds a string chunk to be encoded and forwarded to the underlying sink.
  @override
  void add(String str) {
    sink.add(encoder.convert(str));
  }

  /// Adds a slice of a string to be encoded and forwarded to the underlying sink.
  ///
  /// If [isLast] is `true`, the sink is closed after adding the slice.
  @override
  void addSlice(String str, int start, int end, bool isLast) {
    sink.add(encoder.convert(str, start, end));

    if (isLast) {
      close();
    }
  }
}

/// A [Converter] that decodes Windows-1251 bytes to strings.
class Windows1251Decoder extends Converter<List<int>, String> {
  /// Creates a [Windows1251Decoder].
  ///
  /// If [allowInvalid] is `true`, invalid bytes are replaced with the Unicode
  /// Replacement Character (U+FFFD). If `false`, a [FormatException] is thrown
  /// for invalid bytes.
  const Windows1251Decoder({this.allowInvalid = false});

  /// Whether to allow invalid bytes during decoding.
  final bool allowInvalid;

  /// Converts the Windows-1251 [input] bytes to a string.
  ///
  /// The [start] and [end] parameters specify the range of the input bytes
  /// to convert. If [end] is omitted, it defaults to the length of [input].
  ///
  /// Throws [FormatException] if [input] contains invalid bytes and
  /// [allowInvalid] is `false`.
  @override
  String convert(List<int> input, [int start = 0, int? end]) {
    end = RangeError.checkValidRange(start, end, input.length);
    List<int>? modified;

    for (var i = start; i < end; i++) {
      var byte = input[i];

      if (byte & ~0xFF != 0) {
        if (allowInvalid) {
          modified ??= input.toList(growable: false);
          modified[i] = 0xFFFD;
        } else {
          throw FormatException('Invalid value in input: $byte');
        }
      } else if (byte > 0x7F) {
        modified ??= input.toList(growable: false);
        modified[i] = symbols[byte - 0x80];
      }
    }

    return String.fromCharCodes(modified ?? input, start, end);
  }

  /// Starts a chunked conversion.
  ///
  /// Returns a [ByteConversionSink] that accepts byte chunks and forwards
  /// the decoded strings to [sink].
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

/// A sink for chunked bytes-to-string conversion using [Windows1251Decoder].
final class _DecoderSink extends ByteConversionSinkBase {
  _DecoderSink(this.sink, this.allowInvalid, this.decoder);

  /// The string sink to forward decoded data to.
  final StringConversionSink sink;

  /// Whether to allow invalid bytes during decoding.
  final bool allowInvalid;

  /// The decoder to use for conversion.
  final Windows1251Decoder decoder;

  /// Closes this sink and the underlying [sink].
  @override
  void close() {
    sink.close();
  }

  /// Adds a byte chunk to be decoded and forwarded to the underlying sink.
  @override
  void add(List<int> chunk) {
    sink.add(decoder.convert(chunk));
  }

  /// Adds a slice of bytes to be decoded and forwarded to the underlying sink.
  ///
  /// If [isLast] is `true`, the sink is closed after adding the slice.
  @override
  void addSlice(List<int> chunk, int start, int end, bool isLast) {
    sink.add(decoder.convert(chunk, start, end));

    if (isLast) {
      close();
    }
  }
}
