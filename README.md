# windows-1251

[![Pub Package][pub_icon]][pub]
[![Test Status][test_ci_icon]][test_ci]
[![CodeCov][codecov_icon]][codecov]

Cyrillic `windows-1251` (`cp1251`) encoding implementation for Dart.

## Usage

```dart
import 'package:windows1251/windows1251.dart';

void main() {
  // >>> 'Привет!'
  print(windows1251.decode([207, 240, 232, 226, 229, 242, 33]));
  // >>> [207, 240, 232, 226, 229, 242, 33]
  print(windows1251.encode('Привет!'));
}
```

## License

This project is licensed under the MIT license.

## Features and bugs

Please file feature requests and bugs at the [issue tracker][tracker].

[new_issue]: https://github.com/ykmnkmi/windows1251.dart/issues/new

[pub_icon]: https://img.shields.io/pub/v/windows1251.svg
[pub]: https://pub.dev/packages/windows1251
[test_ci_icon]: https://github.com/ykmnkmi/windows1251.dart/actions/workflows/test.yaml/badge.svg
[test_ci]: https://github.com/ykmnkmi/windows1251.dart/actions/workflows/test.yaml
[codecov_icon]: https://codecov.io/gh/ykmnkmi/windows1251.dart/branch/main/graph/badge.svg?token=LSU9C5W147
[codecov]: https://codecov.io/gh/ykmnkmi/windows1251.dart
[tracker]: https://github.com/ykmnkmi/windows1251.dart/issues