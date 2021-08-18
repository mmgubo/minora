import 'package:flutter/material.dart';
import 'package:minora/src/ui_logic/widgets/large_heading.dart';
import 'package:minora/src/ui_logic/widgets/logo_container.dart';
import 'package:minora/src/ui_logic/widgets/margin_top_container.dart';

class RegistrationScreen extends StatefulWidget {
  static String routeName = '/register';

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final _formKey = GlobalKey<FormState>();

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

  Widget _phoneDisplay(BuildContext context, BoxConstraints constraints) {
    return Container(
      width: constraints.maxWidth,
      height: constraints.maxHeight,
      child: SingleChildScrollView(
        child: Column(
          children: [
            LogoContainer(
              constraints: constraints,
            ),
            MarginTopContainer(margin: constraints.maxWidth * 0.02),
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: constraints.maxWidth * 0.06),
              child: Column(
                children: [
                  LargeHeading(constraints: constraints, heading: 'Sign Up'),
                  MarginTopContainer(margin: constraints.maxWidth * 0.06),
                  // _registrationForm(constraints),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
