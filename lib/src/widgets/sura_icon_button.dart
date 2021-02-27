import 'package:flutter/material.dart';

class SuraIconButton extends StatelessWidget {
  final Function onTap;
  final Widget icon;
  final EdgeInsets margin;
  final EdgeInsets padding;
  final Color backgroundColor;
  final double borderRadius;
  final double elevation;
  final BorderSide borderSide;

  ///An IconButton with respectively small margin and shape
  const SuraIconButton({
    Key key,
    @required this.onTap,
    @required this.icon,
    this.margin = const EdgeInsets.all(0),
    this.padding = const EdgeInsets.all(8),
    this.borderRadius = 8,
    this.backgroundColor = Colors.transparent,
    this.elevation = 0.0,
    this.borderSide,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final shape = RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(borderRadius),
      side: borderSide ?? BorderSide.none,
    );
    return Card(
      shape: shape,
      color: backgroundColor,
      elevation: elevation,
      margin: margin,
      child: InkWell(
        onTap: onTap,
        customBorder: shape,
        child: Padding(
          padding: padding,
          child: icon,
        ),
      ),
    );
  }
}
