import 'package:flutter/material.dart';
import 'package:flutter_maps_firebase_sqflite_api_project/constants/routes.dart';
import 'package:flutter_maps_firebase_sqflite_api_project/presentation/screens/auth_screen.dart';
import 'package:flutter_maps_firebase_sqflite_api_project/presentation/screens/otp_screen.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case authScreenRoute:
        return MaterialPageRoute(builder: (_) => AuthScreen());
      case otpScreenRoute:
        final phone = settings.arguments.toString();
        return MaterialPageRoute(builder: (context) => OtpScreen(phone: phone));
    }
    return null;
  }
}
