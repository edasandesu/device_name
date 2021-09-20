library device_name;

import 'package:device_name/apple_device_name.dart';
import 'package:collection/collection.dart';

/// A DeviceName.
class DeviceName {
  /// Returns device name of [machine].
  /// [machine] is device identifier.
  /// Reference is "https://gist.github.com/adamawolf/3048717".
  Future<String?> apple(String? machine) async {
    final appleDeviceName = AppleDeviceName();
    final response = await appleDeviceName.fetch();
    final devices = appleDeviceName.getDevices(response.body);
    return devices.firstWhereOrNull((e) => e.id == machine)?.name;
  }

  /// Returns device generation of [machine].
  /// [machine] is device identifier.
  String? ios(String? machine) {
    switch (machine) {

      /// MARK: iPhone
      case 'iPhone1,1':
        return 'iPhone';
      case 'iPhone1,2':
        return 'iPhone 3G';
      case 'iPhone2,1':
        return 'iPhone 3GS';
      case 'iPhone3,1:':
      case 'iPhone3,2':
      case 'iPhone3,3':
        return 'iPhone4';
      case 'iPhone4,1':
        return 'iPhone 4S';
      case 'iPhone5,1':
      case 'iPhone5,2':
        return 'iPhone 5';
      case 'iPhone5,3':
      case 'iPhone5,4':
        return 'iPhone 5c';
      case 'iPhone6,1':
      case 'iPhone6,2':
        return 'iPhone 5s';
      case 'iPhone7,2':
        return 'iPhone 6';
      case 'iPhone7,1':
        return 'iPhone 6 Plus';
      case 'iPhone8,1':
        return 'iPhone 6s';
      case 'iPhone8,2':
        return 'iPhone 6s Plus';
      case 'iPhone8,4':
        return 'iPhone SE 1th Generation';
      case 'iPhone9,1':
      case 'iPhone9,3':
        return 'iPhone 7';
      case 'iPhone9,2':
      case 'iPhone9,4':
        return 'iPhone 7 Plus';
      case 'iPhone10,1':
      case 'iPhone10,4':
        return 'iPhone 8';
      case 'iPhone10,2':
      case 'iPhone10,5':
        return 'iPhone 8 Plus';
      case 'iPhone10,3':
      case 'iPhone10,6':
        return 'iPhone X';
      case 'iPhone11,8':
        return 'iPhone XR';
      case 'iPhone11,2':
        return 'iPhone XS';
      case 'iPhone11,6':
      case 'iPhone11,4':
        return 'iPhone XS Max';
      case 'iPhone12,1':
        return 'iPhone 11';
      case 'iPhone12,3':
        return 'iPhone 11 Pro';
      case 'iPhone12,5':
        return 'iPhone 11 Pro Max';
      case 'iPhone12,8':
        return 'iPhone SE 2nd Generation';
      case 'iPhone13,1':
        return 'iPhone 12 mini';
      case 'iPhone13,2':
        return 'iPhone 12';
      case 'iPhone13,3':
        return 'iPhone 12 Pro';
      case 'iPhone13,4':
        return 'iPhone 12 Pro Max';
      case 'iPhone14,2':
        return 'iPhone 13 Pro';
      case 'iPhone14,3':
        return 'iPhone 13 Pro Max';
      case 'iPhone14,4':
        return 'iPhone 13 mini';
      case 'iPhone14,5':
        return 'iPhone 13';

      /// MARK: iPad
      case 'iPad1,1':
        return 'iPad';
      case 'iPad2,1':
      case 'iPad2,2':
      case 'iPad2,3':
      case 'iPad2,4':
        return 'iPad 2';
      case 'iPad3,1':
      case 'iPad3,2':
      case 'iPad3,3':
        return 'iPad 3rd generation';
      case 'iPad3,4':
      case 'iPad3,5':
      case 'iPad3,6':
        return 'iPad 4th generation';
      case 'iPad6,11':
      case 'iPad6,12':
        return 'iPad 5th generation';
      case 'iPad7,5':
      case 'iPad7,6':
        return 'iPad 6th generation';
      case 'iPad7,11':
      case 'iPad7,12':
        return 'iPad 7th generation';
      case 'iPad11,6':
      case 'iPad11,7':
        return 'iPad 8th generation';

      /// MARK: iPad Air
      case 'iPad4,1':
      case 'iPad4,2':
      case 'iPad4,3':
        return 'iPad Air';
      case 'iPad5,3':
      case 'iPad5,4':
        return 'iPad Air 2';
      case 'iPad11,3':
      case 'iPad11,4':
        return 'iPad Air 3rd generation';
      case 'iPad13,1':
      case 'iPad13,2':
        return 'iPad Air 4th generation';

      /// MARK: iPad Pro
      case 'iPad6,7':
      case 'iPad6,8':
        return 'iPad Pro 12.9-inch';
      case 'iPad6,3':
      case 'iPad6,4':
        return 'iPad Pro 9.7-inch';
      case 'iPad7,1':
      case 'iPad7,2':
        return 'iPad Pro 12.9-inch 2nd generation';
      case 'iPad7,3':
      case 'iPad7,4':
        return 'iPad Pro 10.5-inch';
      case 'iPad8,1':
      case 'iPad8,2':
      case 'iPad8,3':
      case 'iPad8,4':
        return 'iPad Pro 11inch';
      case 'iPad8,5':
      case 'iPad8,6':
      case 'iPad8,7':
      case 'iPad8,8':
        return 'iPad Pro 12.9-inch 3rd generation';
      case 'iPad8,9':
      case 'iPad8,10':
        return 'iPad Pro 11inch 2nd generation';
      case 'iPad8,11':
      case 'iPad8,12':
        return 'iPad Pro 12.9-inch 4th generation';

      /// MARK: iPad mini
      case 'iPad2,5':
      case 'iPad2,6':
      case 'iPad2,7':
        return 'iPad mini';
      case 'iPad4,4':
      case 'iPad4,5':
      case 'iPad4,6':
        return 'iPad mini 2';
      case 'iPad4,7':
      case 'iPad4,8':
      case 'iPad4,9':
        return 'iPad mini 3';
      case 'iPad5,1':
      case 'iPad5,2':
        return 'iPad mini 4';
      case 'iPad11,1':
      case 'iPad11,2':
        return 'iPad mini 5th generation';

      /// MARK: iPod Touch
      case 'iPod1,1':
        return 'iPod Touch';
      case 'iPod2,1':
        return 'iPod Touch 2nd generation';
      case 'iPod3,1':
        return 'iPod Touch 3rd generation';
      case 'iPod4,1':
        return 'iPod Touch 4th generation';
      case 'iPod5,1':
        return 'iPod Touch 5th generation';
      case 'iPod7,1':
        return 'iPod Touch 6th generation';
      case 'iPod9,1':
        return 'iPod Touch 7th generation';

      /// MARK: Simulator
      case 'x86_64':
        return 'Simulator';
    }
  }
}
