import 'package:flutter/material.dart';

class RegistrationScreen extends StatefulWidget {
  static String routeName = '/register';

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(child: LayoutBuilder(builder: (context, constraints) {
        if (constraints.maxWidth > 500) {
          //Build tablet display
        }

        return _phoneDisplay(context, constraints);
      })),
    );
  }

  Widget _phoneDisplay(BuildContext context, BoxConstraints constraints) {}
}
