import 'package:flutter/material.dart';

class LargeHeading extends StatelessWidget {
  final BoxConstraints constraints;
  final String heading;

  LargeHeading({this.constraints, this.heading});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          heading,
          style: TextStyle(fontSize: constraints.maxWidth * 0.08),
        ),
      ],
    );
  }
}
