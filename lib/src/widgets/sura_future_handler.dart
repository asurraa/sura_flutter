import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'sura_theme.dart';

class SuraFutureHandler<T> extends StatelessWidget {
  final Future<T> future;

  ///A callback when Future's snapshot hasData
  final Widget Function(T?) ready;
  final Widget? loading;
  final T? initialData;

  ///On snapshot error callback
  final Widget Function(dynamic)? error;

  ///Create a futurebuilder with less boilerplate code
  const SuraFutureHandler({
    required this.future,
    required this.ready,
    this.error,
    this.loading,
    this.initialData,
  });
  @override
  Widget build(BuildContext context) {
    final SuraTheme? suraTheme = SuraTheme.of(context);
    //
    return FutureBuilder<T>(
      future: future,
      initialData: initialData,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return ready(snapshot.data);
        } else if (snapshot.hasError) {
          if (error != null) return error!(snapshot.error);
          return suraTheme?.errorWidget?.call(snapshot.error) ??
              Center(
                child: Text(
                  snapshot.error.toString(),
                  textAlign: TextAlign.center,
                ),
              );
        } else {
          if (loading != null) return loading!;
          return suraTheme?.loadingWidget ??
              Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
