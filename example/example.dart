import 'package:cp1251/cp1251.dart';

void main() {
  print(cp1251.decode([207, 240, 232, 226, 229, 242, 33]));
  print(cp1251.encode('Привет!'));
}
