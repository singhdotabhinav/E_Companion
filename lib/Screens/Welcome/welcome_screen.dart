import 'package:flutter/material.dart';
import 'package:E_Companion/Screens/Welcome/components/body.dart';
import 'package:firebase_auth/firebase_auth.dart';

class WelcomeScreen extends StatelessWidget {
  static String id='welcome_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
