import 'package:cp1251/windows1251.dart';
import 'package:test/test.dart';

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
}
