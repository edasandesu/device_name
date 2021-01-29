import 'package:device_name/device_name.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('adds one to input values', () {
    final deviceName = DeviceName();
    expect(deviceName.ios('iPhone13,4'), 'iPhone 12 Pro Max');
    expect(deviceName.ios('iPad8,12'), 'iPad Pro 12.9-inch 4th generation');
    expect(deviceName.ios(''), 'unknown');
    expect(deviceName.ios(null), 'unknown');
  });
}
