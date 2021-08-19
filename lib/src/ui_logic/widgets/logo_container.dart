import 'package:flutter/material.dart';

class LogoContainer extends StatelessWidget {
  final BoxConstraints constraints;

  LogoContainer({this.constraints});
  String theme = 'L';

  @override
  Widget build(BuildContext context) {
    return Container(
      height: constraints.maxWidth * 0.50,
      child: Image(
        image:  AssetImage('assets/images/pencil_chalk_logo.png'),
        fit: BoxFit.contain,
      ),
    );
  }
}
