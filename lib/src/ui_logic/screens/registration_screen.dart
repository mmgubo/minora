import 'package:flutter/material.dart';
import 'package:minora/src/mixins/validation.dart';
import 'package:minora/src/ui_logic/widgets/large_heading.dart';
import 'package:minora/src/ui_logic/widgets/logo_container.dart';
import 'package:minora/src/ui_logic/widgets/margin_top_container.dart';

class RegistrationScreen extends StatefulWidget {
  static String routeName = '/register';

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> with ValidationMixin {
  final _formKey = GlobalKey<FormState>();

  String _fullName;
  String _email;
  String _password;
  bool _hidePassword = true;
  bool _hideConfirmPassword = true;

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
                  _registrationForm(constraints),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _registrationForm(BoxConstraints constraints) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          _nameTextFormField(),
          MarginTopContainer(margin: constraints.maxWidth * 0.06),
          _emailTextFormField(),
          MarginTopContainer(margin: constraints.maxWidth * 0.06),
          _passwordTextFormField(),
          MarginTopContainer(margin: constraints.maxWidth * 0.06),
          _confirmPasswordTextFormField(),
          MarginTopContainer(margin: constraints.maxWidth * 0.05),
          _submitButton(context, constraints),
          MarginTopContainer(margin: constraints.maxWidth * 0.04),
          _haveAnAccount(constraints),
        ],
      ),
    );
  }


  Widget _nameTextFormField() {
    return TextFormField(
      style: TextStyle(color: Theme.of(context).copyWith().primaryColorDark),
      decoration: InputDecoration(
        labelText: 'Full Name',
        suffixIcon: Icon(
          Icons.person,
          color: Theme.of(context).copyWith().primaryColor,
        ),
      ),
      cursorColor: Theme.of(context).copyWith().accentColor,
      validator: validateName,
      onSaved: (value) {
        _fullName = value;
      },
    );
  }

  Widget _emailTextFormField() {
    return TextFormField(
      style: TextStyle(color: Theme.of(context).copyWith().primaryColorDark),
      decoration: InputDecoration(
        labelText: 'Email Address',
        suffixIcon: Icon(
          Icons.email,
          color: Theme.of(context).copyWith().primaryColor,
        ),
      ),
      cursorColor: Theme.of(context).copyWith().accentColor,
      keyboardType: TextInputType.emailAddress,
      validator: validateEmail,
      onSaved: (value) {
        _email = value;
      },
    );
  }

  Widget _passwordTextFormField() {
    return TextFormField(
      style: TextStyle(color: Theme.of(context).copyWith().primaryColorDark),
      decoration: InputDecoration(
        labelText: 'Password',
        suffixIcon: GestureDetector(
          child: Icon(_hidePassword ? Icons.visibility_off : Icons.visibility,
              color: Theme.of(context).copyWith().primaryColor),
          onTap: () {
            setState(() {
              _hidePassword = !_hidePassword;
            });
          },
        ),
      ),
      cursorColor: Theme.of(context).copyWith().accentColor,
      obscureText: _hidePassword,
      validator: validatePassword,
      onSaved: (value) {
        _password = value;
      },
    );
  }

  Widget _confirmPasswordTextFormField() {
    return TextFormField(
      style: TextStyle(color: Theme.of(context).copyWith().primaryColorDark),
      decoration: InputDecoration(
        labelText: 'Confirm Password',
        suffixIcon: GestureDetector(
          child: Icon(
            _hideConfirmPassword ? Icons.visibility_off : Icons.visibility,
            color: Theme.of(context).copyWith().primaryColor,
          ),
          onTap: () {
            setState(() {
              _hideConfirmPassword = !_hideConfirmPassword;
            });
          },
        ),
      ),
      cursorColor: Theme.of(context).copyWith().accentColor,
      obscureText: _hideConfirmPassword,
      validator: validateConfirmPassword,
    );
  }

  Widget _submitButton(BuildContext context, BoxConstraints constraints) {
    return SizedBox(
      width: constraints.maxWidth,
      child: TextButton(
        child: Text(
          'Sign Up',
          style: TextStyle(
            color: Theme.of(context).copyWith().buttonColor,
            fontSize: constraints.maxWidth * 0.045,
          ),
        ),
        style: TextButton.styleFrom(
          backgroundColor: Theme.of(context).copyWith().primaryColor,
          padding: EdgeInsets.all(constraints.maxWidth * 0.04),
        ),
        onPressed: () async {
         
        },
      ),
    );
  }

  Widget _haveAnAccount(BoxConstraints constraints) {
    return Row(
      children: [
        Text(
          'Have an account?',
          style: TextStyle(fontSize: constraints.maxWidth * 0.04),
        ),
        TextButton(
          child: Text(
            'Sign In',
            style: TextStyle(
              color: Theme.of(context).copyWith().primaryColor,
              fontSize: constraints.maxWidth * 0.04,
            ),
          ),
          onPressed: () {
            //Navigator.pushReplacementNamed(context, LoginScreen.routeName);
          },
        ),
      ],
    );
  }







}
