# windows-1251

`windows-1251` (`cp1251`) Dart implementation.

## Usage

```dart
import 'package:cp1251/windows1251.dart';

void main() {
  // >>> 'Привет!'
  print(windows1251.decode([207, 240, 232, 226, 229, 242, 33]));
  // >>> [207, 240, 232, 226, 229, 242, 33]
  print(windows1251.encode('Привет!'));
}
```

## Contributing
If you found a bug, just create a [new issue][new_issue] or even better fork and issue a pull request with your fix.

[new_issue]: https://github.com/ykmnkmi/windows1251.dart/issues/new