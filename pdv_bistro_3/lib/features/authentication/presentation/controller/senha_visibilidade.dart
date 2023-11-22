import 'package:flutter/foundation.dart';

class SenhaVisibilidade extends ChangeNotifier {
  bool _isObscured = true;

  bool get isObscured => _isObscured;

  void toggleVisibility() {
    _isObscured = !_isObscured;
    notifyListeners();
  }
}
