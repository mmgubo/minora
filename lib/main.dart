import 'package:flutter/material.dart';
import 'package:minora/src/ui_logic/screens/registration_screen.dart';
import 'locator.dart';

void main() {

  // Register all the models and services before the app starts
  setupLocator();
  
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


