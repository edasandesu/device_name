import 'package:device_name/device_name.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('from gist', () async {
    final deviceName = DeviceName();
    expect(await deviceName.apple('iPhone13,4'), 'iPhone 12 Pro Max');
    expect(await deviceName.apple('iPhone14,5'), 'iPhone 13');
    expect(await deviceName.apple(''), null);
    expect(await deviceName.apple(null), null);
  });

  test('adds one to input values', () {
    final deviceName = DeviceName();
    expect(deviceName.ios('iPhone13,4'), 'iPhone 12 Pro Max');
    expect(deviceName.ios('iPad8,12'), 'iPad Pro 12.9-inch 4th generation');
    expect(deviceName.ios(''), null);
    expect(deviceName.ios(null), null);
  });
}
