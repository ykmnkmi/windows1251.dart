import 'package:cp1251/windows1251.dart';

void main() {
  // 'Привет!'
  print(windows1251.decode([207, 240, 232, 226, 229, 242, 33]));
  // [207, 240, 232, 226, 229, 242, 33]
  print(windows1251.encode('Привет!'));
}
