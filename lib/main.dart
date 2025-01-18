import 'package:flutter/material.dart';
import 'package:outlook/screens/main/main_screen.dart';
import 'constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: kBgLightColor,
        fontFamily: 'Roboto',
        textTheme: TextTheme(
          bodyMedium: TextStyle(
            color: kTextColor,
            fontFamily: 'Roboto',
            fontFamilyFallback: ['Noto Sans SC'],
          ),
          bodySmall: TextStyle(
            color: kTextColor,
            fontFamily: 'Roboto',
            fontFamilyFallback: ['Noto Sans SC'],
          ),
        ),
      ),
      home: MainScreen(),
    );
  }
}
