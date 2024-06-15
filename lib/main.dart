import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:aibuddha_assignment/screens/authscreen.dart';
import 'package:aibuddha_assignment/screens/home.dart';
import 'package:aibuddha_assignment/screens/tabs.dart';

void main() {
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp, // Allow only portrait mode
    DeviceOrientation.portraitDown,
  ]);
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AuthScreen(),
      // home: HomePage(),
      // home: Tabs(),
    ),
  );
}
