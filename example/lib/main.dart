import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter_ios_store_rate/flutter_ios_store_rate.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool ratingAvailable = false;

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initPlatformState() async {
    bool isAvailable = await FlutterIosStoreRate.isAvailable;
  
    if(isAvailable) {
      FlutterIosStoreRate.requestReview();
    }
    setState(() {
      ratingAvailable = isAvailable;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: Text('Is Rating available: ${ratingAvailable ? 'Yes' : 'No'}\n'),
        ),
      ),
    );
  }
}
