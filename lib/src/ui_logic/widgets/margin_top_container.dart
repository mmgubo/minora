import 'package:flutter/material.dart';

class MarginTopContainer extends StatelessWidget {
  final double margin;

  MarginTopContainer({this.margin});

  @override
  Widget build(BuildContext context) {
    return Container(margin: EdgeInsets.only(top: margin));
  }
}
