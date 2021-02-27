import 'package:flutter/material.dart';

class SuraStyle {
  ///Create a RoundRectangleBorder with given radius
  static RoundedRectangleBorder roundRect([double _radius = 8]) {
    return RoundedRectangleBorder(borderRadius: radius(_radius));
  }

  static RoundedRectangleBorder roundRectTop([double _radius = 8]) {
    return RoundedRectangleBorder(borderRadius: radiusTop(_radius));
  }

  static RoundedRectangleBorder roundRectBottom([double _radius = 8]) {
    return RoundedRectangleBorder(borderRadius: radiusBottom(_radius));
  }

  static RoundedRectangleBorder roundRectLeft([double _radius = 8]) {
    return RoundedRectangleBorder(borderRadius: radiusLeft(_radius));
  }

  static RoundedRectangleBorder roundRectRight([double _radius = 8]) {
    return RoundedRectangleBorder(borderRadius: radiusRight(_radius));
  }

  ///Create a border Radius
  static BorderRadius radius([double _radius = 8]) {
    return BorderRadius.circular(_radius);
  }

  static BorderRadius radiusTop([double _radius = 8]) {
    return BorderRadius.vertical(top: Radius.circular(_radius));
  }

  static BorderRadius radiusBottom([double _radius = 8]) {
    return BorderRadius.vertical(bottom: Radius.circular(_radius));
  }

  static BorderRadius radiusLeft([double _radius = 8]) {
    return BorderRadius.horizontal(left: Radius.circular(_radius));
  }

  static BorderRadius radiusRight([double _radius = 8]) {
    return BorderRadius.horizontal(right: Radius.circular(_radius));
  }
}
