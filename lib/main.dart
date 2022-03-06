import 'package:car/curve.dart';
import 'package:car/register.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'login.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType)
    {
      return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: login(),
        routes: {
          'login': (context) => login(),
          'register': (context) => register()
        },
      );
    }
    );
  }
}

