import 'package:flutter/material.dart';

class SpaceX extends StatelessWidget {
  final double width;

  ///Create a horizontal blank space
  const SpaceX([this.width = 8]);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
    );
  }
}

class SpaceY extends StatelessWidget {
  final double height;

  ///Create a vertical blank space
  const SpaceY([this.height = 8]);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
    );
  }
}
