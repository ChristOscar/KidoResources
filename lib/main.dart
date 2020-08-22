import 'package:flutter/material.dart';
import 'package:kidoresources/constants.dart';
import 'package:kidoresources/screens/HomeScreen.dart';
import 'package:kidoresources/screens/IntroScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kido Resources',
      theme: ThemeData(
        fontFamily: "Cairo",
        scaffoldBackgroundColor: kBackgroundColor,
        textTheme: Theme.of(context).textTheme.apply(displayColor: kTextColor),
      ),
      home: IntroScreen(),
    );
  }
}

//home: HomeScreen(),
