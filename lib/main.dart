// ignore_for_file: override_on_non_overriding_member, annotate_overrides, use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wallpaper_app/pages/FavPage.dart';
import 'package:wallpaper_app/pages/HomePage.dart';
import 'package:wallpaper_app/pages/ImagePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  State<MyApp> createState() => _MyAppState();

  @override
  Widget build(BuildContext context) {
    // implement build
    throw UnimplementedError();
  }
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    super.initState();
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => HomePage(),
        "imagePage": (context) => ImagePage(),
        "favPage": (context) => FavPage(),
      },
    );
  }
}
