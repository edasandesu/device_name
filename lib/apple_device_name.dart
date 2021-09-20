import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:html/parser.dart' show parse;

class AppleDeviceName {
  static const url = 'https://gist.github.com/adamawolf/3048717';

  static const deviceTypesId = 'file-apple_mobile_device_types-txt';

  static const typeClassName = 'blob-cade blob-code-inner js-file-line';

  Future<http.Response> fetch() {
    return http.get(Uri.parse(url));
  }

  List<AppleDeviceModel> getDevices(String body) {
    final document = parse(body);
    final typesElement = document.getElementById(deviceTypesId);
    final trs = typesElement?.querySelectorAll('tr');

    if (trs == null) {
      return [];
    }

    final models = <AppleDeviceModel>[];
    for (final tr in trs) {
      for (final child in parse(tr.innerHtml).children) {
        final texts = child.text.split(':');
        if (texts.length != 2) {
          continue;
        }

        final model = AppleDeviceModel(
          id: texts.first.trim(),
          name: texts.last.trim(),
        );
        models.add(model);
      }
    }
    return models;
  }
}

@immutable
class AppleDeviceModel {
  const AppleDeviceModel({
    required this.id,
    required this.name,
  });

  final String id;
  final String name;
}
