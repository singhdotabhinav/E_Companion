import 'package:flutter/material.dart';
import 'package:E_Companion/Screens/Home/components/body.dart';


class HomeScreen extends StatelessWidget {
  static String id='home_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}