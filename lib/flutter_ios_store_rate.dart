import 'dart:async';

import 'package:flutter/services.dart';

class FlutterIosStoreRate {
  static const MethodChannel _channel =
      const MethodChannel('flutter_ios_store_rate');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version.replaceAll(new RegExp('iOS '), '');
  }

  static Future<bool> get isAvailable async {
    final String version = await platformVersion;
    return double.parse(version) >= 10.3;
  }

  static void requestReview() {
    _channel.invokeMethod('requestReview');
  }
}
