import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ios_store_rate/flutter_ios_store_rate.dart';

void main() {
  const MethodChannel channel = MethodChannel('flutter_ios_store_rate');

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await FlutterIosStoreRate.platformVersion, '42');
  });
}
