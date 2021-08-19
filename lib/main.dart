import 'package:flutter/material.dart';
import 'package:minora/src/ui_logic/screens/registration_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo One',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: RegistrationScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}


