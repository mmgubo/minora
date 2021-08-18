import 'package:flutter/material.dart';

class LogoContainer extends StatelessWidget {
  final BoxConstraints constraints;

  LogoContainer({this.constraints});
  String theme = 'L';

  @override
  Widget build(BuildContext context) {
    return Container(
      height: constraints.maxWidth * 0.55,
      child: Image(
        image: theme == 'L'
            ? AssetImage('assets/images/fms_logo_dark.png')
            : AssetImage('assets/images/fms_logo_light.png'),
        fit: BoxFit.contain,
      ),
    );
  }
}
