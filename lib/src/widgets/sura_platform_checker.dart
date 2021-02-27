import 'dart:io' as io show Platform;

import 'package:flutter/material.dart';

///Provide a widget child depend on the Platform, Currently support [iOS] and [Android]
class SuraPlatformChecker extends StatelessWidget {
  final Widget androidWidget;
  final Widget iosWidget;

  const SuraPlatformChecker({
    Key key,
    @required this.androidWidget,
    this.iosWidget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return buildPlatformChecker();
  }

  Widget buildPlatformChecker() {
    if (iosWidget != null) {
      return io.Platform.isIOS || io.Platform.isMacOS
          ? iosWidget
          : androidWidget;
    }
    return androidWidget;
  }
}
