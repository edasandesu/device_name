import 'package:device_name/device_name.dart';

Future<void> main() async {
  /// A model name.
  final identifier = 'iPhone13,4';

  final deviceName = DeviceName();

  /// Get device name from model name.
  print('device name is ${deviceName.ios(identifier)}');
  print('device name is ${await deviceName.apple(identifier)}');
}
