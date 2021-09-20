# device_name

A Flutter package for getting device name from device identifier.

## Getting Started

In the `pubspec.yaml` of your flutter project, add the following dependency:

```yaml
dependencies:
  flutter:
    sdk:
  device_name: ^{latest_version}
```

In your library add the following import:

```dart
import 'package:device_name/device_name.dart';
```

## Usage

Import `package:device_name/device_name.dart`, instantiate `DeviceName` and use iOS getters to get device name.

You can get the device identifier from [device_info](https://pub.dev/packages/device_info).
Get utsname.machine from iosInfo.

```dart
import 'package:device_name/device_name.dart';

Future<void> main() async {
  final identifier = 'iPhone13,4';

  final deviceName = DeviceName();
  
  print('device name is ${deviceName.ios(identifier)}');
  // device name is iPhone 12 Pro Max

  print('device name is ${await deviceName.apple(identifier)}');
  // device name is iPhone 12 Pro Max
}
```

## Reference

[Models - The iPhone Wiki](https://www.theiphonewiki.com/wiki/Models)
[Apple_mobile_device_types.txt](https://gist.github.com/adamawolf/3048717)