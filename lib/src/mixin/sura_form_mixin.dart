import 'package:flutter/cupertino.dart';

///Provide some field to use in a Widget that contains form
mixin SuraFormMixin<T extends StatefulWidget> on State<T> {
  final formKey = GlobalKey<FormState>();
  final loadingNotifier = ValueNotifier<bool>(false);
  final passwordObsecureNotifier = ValueNotifier<bool>(true);

  void toggleLoading() {
    loadingNotifier.value = !loadingNotifier.value;
  }

  void togglePasswordObsecure() {
    passwordObsecureNotifier.value = !passwordObsecureNotifier.value;
  }

  bool get isFormValidated => formKey.currentState?.validate() ?? true;

  @override
  void dispose() {
    loadingNotifier.dispose();
    passwordObsecureNotifier.dispose();
    super.dispose();
  }

  // ignore: non_constant_identifier_names
  Widget PasswordTextFieldBuilder({required Widget Function(bool) builder}) {
    return ValueListenableBuilder<bool>(
      valueListenable: passwordObsecureNotifier,
      builder: (context, isObsecure, child) {
        return builder(isObsecure);
      },
    );
  }
}
