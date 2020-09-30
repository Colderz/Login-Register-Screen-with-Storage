import 'package:flutter/material.dart';
import 'package:local_storage_first_step/views/login_screen.dart';
import 'package:local_storage_first_step/views/opening_screen.dart';
import 'package:local_storage_first_step/views/register_screen.dart';

class AppRoutes {
  AppRoutes._();

  static const String authLogin = '/auth-login';
  static const String authRegister = '/auth-register';

  static Map<String, WidgetBuilder> define() {
    return {
      authLogin: (context) => LoginScreen(),
      authRegister: (context) => RegisterScreen(),
    };
  }
}
