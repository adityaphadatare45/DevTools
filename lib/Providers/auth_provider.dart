import 'package:flutter/material.dart';

class AuthProvider with ChangeNotifier{
  Future<void> logout() async {
    notifyListeners();
  }
}