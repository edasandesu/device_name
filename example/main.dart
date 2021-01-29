import 'package:device_name/device_name.dart';

void main() {
  /// A model name.
  final identifier = 'iPhone13,4';

  final deviceName = DeviceName();

  /// Get device name from model name.
  final generation = deviceName.ios(identifier);

  print('device name is $generation');
}
