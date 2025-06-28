# windows-1251

[![Pub Package][pub_icon]][pub]
[![Test Status][test_ci_icon]][test_ci]
[![CodeCov][codecov_icon]][codecov]

A Dart package for encoding and decoding text using the Windows-1251 (CP1251) character encoding, primarily used for Cyrillic script languages such as Russian, Bulgarian, Serbian, and Macedonian.

## Features

- **Encode** strings to Windows-1251 bytes
- **Decode** Windows-1251 bytes to strings
- **Error handling** with configurable invalid character behavior
- **Chunked conversion** support for streaming data
- **Pure Dart** implementation with no external dependencies

## Installation

Add this package to your `pubspec.yaml`:

```yaml
dependencies:
  windows1251: ^1.0.0
```

Then run:

```bash
dart pub get
```

## Usage

### Basic Usage

```dart
import 'package:windows1251/windows1251.dart';

void main() {
  // Decode Windows-1251 bytes to string
  final decoded = windows1251.decode([207, 240, 232, 226, 229, 242, 33]);
  print(decoded); // Output: 'Привет!'

  // Encode string to Windows-1251 bytes
  final encoded = windows1251.encode('Привет!');
  print(encoded); // Output: [207, 240, 232, 226, 229, 242, 33]
}
```

### Custom Codec Configuration

```dart
import 'package:windows1251/windows1251.dart';

void main() {
  // Create codec that allows invalid characters
  const codec = Windows1251Codec(allowInvalid: true);

  // Invalid characters will be replaced with '?' during encoding
  print(codec.encode('Привет 🌍!'));
  // Output: [207, 240, 232, 226, 229, 242, 32, 63, 33]

  // Invalid bytes will be replaced with � during decoding
  print(codec.decode([207, 240, 232, 226, 229, 242, 32, 55356, 33]));
  // Output: 'Привет �!'
}
```

### Error Handling

```dart
import 'package:windows1251/windows1251.dart';

void main() {
  try {
    // This will throw an ArgumentError because emoji can't be encoded
    windows1251.encode('Привет 🌍!');
  } on ArgumentError catch (e) {
    print('Encoding error: $e');
    // Output: 'Encoding error: Invalid argument (input): Contains invalid characters: "Привет 🌍!"'
  }

  try {
    // This will throw a FormatException for invalid bytes
    windows1251.decode([207, 240, 232, 226, 229, 242, 32, 55356, 33]);
  } on FormatException catch (e) {
    print('Decoding error: $e');
    // Output: 'Decoding error: FormatException: Invalid value in input: 55356'
  }
}
```

### Using Converters Directly

```dart
import 'package:windows1251/windows1251.dart';

void main() {
  // Using encoder directly
  const encoder = Windows1251Encoder();
  final bytes = encoder.convert('Привет');

  // Using decoder directly
  const decoder = Windows1251Decoder();
  final text = decoder.convert(bytes);

  print(text); // Output: 'Привет'
}
```

## License

This project is licensed under the MIT License.

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## Features and bugs

Please file feature requests and bugs at the [issue tracker][tracker].

[pub_icon]: https://img.shields.io/pub/v/windows1251.svg
[pub]: https://pub.dev/packages/windows1251
[test_ci_icon]: https://github.com/ykmnkmi/windows1251.dart/actions/workflows/test.yaml/badge.svg
[test_ci]: https://github.com/ykmnkmi/windows1251.dart/actions/workflows/test.yaml
[codecov_icon]: https://codecov.io/gh/ykmnkmi/windows1251.dart/branch/main/graph/badge.svg?token=LSU9C5W147
[codecov]: https://codecov.io/gh/ykmnkmi/windows1251.dart
[tracker]: https://github.com/ykmnkmi/windows1251.dart/issues