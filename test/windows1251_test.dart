import 'dart:convert';

import 'package:test/test.dart';
import 'package:windows1251/windows1251.dart';

const List<int> bytes = <int>[207, 240, 232, 226, 229, 242, 33];

void main() {
  group('decoder', () {
    test('valid', () {
      expect(windows1251.decode(bytes), equals('Привет!'));
    });

    test('invalid', () {
      expect(() => windows1251.decode(<int>[0xFFFF]), throwsFormatException);
    });
  });

  group('encoder', () {
    test('valid', () {
      expect(windows1251.encode('Привет!'), orderedEquals(bytes));
    });

    test('invalid', () {
      expect(() => windows1251.encode('\uFFFF'), throwsArgumentError);
    });
  });

  group('chunked', () {
    test('encode', () {
      var buffer = <int>[];
      var byteSink = ByteConversionSink.withCallback(buffer.addAll);

      windows1251.encoder.startChunkedConversion(byteSink)
        ..add('При')
        ..add('вет')
        ..add('!')
        ..close();

      expect(buffer, orderedEquals(bytes));
    });

    test('decoder', () {
      var buffer = StringBuffer();
      var stingSink = StringConversionSink.fromStringSink(buffer);

      windows1251.decoder.startChunkedConversion(stingSink)
        ..add(bytes.sublist(0, 3))
        ..add(bytes.sublist(3, 6))
        ..add(bytes.sublist(6))
        ..close();

      expect(buffer.toString(), equals('Привет!'));
    });
  });
}
