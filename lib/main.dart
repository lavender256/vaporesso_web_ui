import 'package:flutter/material.dart';
import 'package:vaporesso_web_ui/screen/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Vaporesso',
      home: HomeScreen()    );
  }
}
