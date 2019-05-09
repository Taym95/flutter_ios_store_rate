# flutter_ios_store_rate

This plugin exposes the native iOS APIs to ask the user to rate the app.

![IMG_0566 (1)](https://user-images.githubusercontent.com/14943106/57464606-483dd100-727d-11e9-9bbb-8946d406ef75.png)


## Usage
* Add `flutter_ios_store_rate` to your `pubspec.yaml`file.
* Example:

```
import'package:flutter_ios_store_rate/flutter_ios_store_rate.dart';

bool isAvailable = await FlutterIosStoreRate.isAvailable;
  
if(isAvailable) {
    FlutterIosStoreRate.requestReview();
}

```


## Getting Started

This project is a starting point for a Flutter
[plug-in package](https://flutter.dev/developing-packages/),
a specialized package that includes platform-specific implementation code for
Android and/or iOS.

For help getting started with Flutter, view our 
[online documentation](https://flutter.dev/docs), which offers tutorials, 
samples, guidance on mobile development, and a full API reference.
