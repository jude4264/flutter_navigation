import 'package:flutter/material.dart';
import 'package:flutter_navigation/screen/home_screen.dart';
import 'package:flutter_navigation/screen/route_one_screen.dart';
import 'package:flutter_navigation/screen/route_two_screen.dart';
import 'package:flutter_navigation/screen/route_three_screen.dart';

// const HOME_ROUTE = '/';
// const ONE_ROUTE = '/one';
// const TWO_ROUTE = '/two';
// const THREE_ROUTE = '/three';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    // home: HomeScreen(),
    routes: {
      '/': (context) => HomeScreen(),
      '/one': (context) => RouteOneScreen(),
      '/two': (context) => RouteTwoScreen(),
      "/three": (context) => RouteThreeScreen(),
    },
  ));
}
