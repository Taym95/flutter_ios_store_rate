#import "FlutterIosStoreRatePlugin.h"
#import <StoreKit/SKStoreReviewController.h>

@implementation FlutterIosStoreRatePlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  FlutterMethodChannel* channel = [FlutterMethodChannel
      methodChannelWithName:@"flutter_ios_store_rate"
            binaryMessenger:[registrar messenger]];
  FlutterIosStoreRatePlugin* instance = [[FlutterIosStoreRatePlugin alloc] init];
  [registrar addMethodCallDelegate:instance channel:channel];
}

- (void)handleMethodCall:(FlutterMethodCall*)call result:(FlutterResult)result {
  if ([@"getPlatformVersion" isEqualToString:call.method]) {
    result([@"iOS " stringByAppendingString:[[UIDevice currentDevice] systemVersion]]);
  } else if ([@"requestReview" isEqualToString:call.method]) {
    [SKStoreReviewController requestReview];
  } else {
    result(FlutterMethodNotImplemented);
  }
}

@end
