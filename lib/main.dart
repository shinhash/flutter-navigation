import 'package:flutter/material.dart';
import 'package:navigation/screen/home_screen.dart';
import 'package:navigation/screen/route_screen_1.dart';
import 'package:navigation/screen/route_screen_2.dart';
import 'package:navigation/screen/route_screen_3.dart';

/// Imperative vs Declarative
void main() {
  runApp(MaterialApp(
    // home: HomeScreen(),
    initialRoute: '/',
    routes: {
      /// key - 라우트 이름
      /// value - builder -> 이동하고싶은 라우트
      '/': (BuildContext context) => HomeScreen(),
      '/one': (BuildContext context) => RouteScreen1(number: 999),
      '/two': (BuildContext context) => RouteScreen2(),
      '/three': (BuildContext context) => RouteScreen3(),
    },
  ));
}
