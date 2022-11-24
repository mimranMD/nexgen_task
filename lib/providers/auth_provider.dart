import 'package:flutter/material.dart';

class AuthProvider with ChangeNotifier {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  bool showPassword = false;

  changePassVisibility(bool value) {
    showPassword = value;
    notifyListeners();
  }
}
