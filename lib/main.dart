//import 'package:E_Companion/chatWindow.dart';
//import 'package:E_Companion/Screens/Welcome/welcome_screen.dart';
import 'package:E_Companion/HomeScreen/HomeScreen.dart';
import 'package:E_Companion/Screens/Welcome/welcome_screen.dart';
//import 'package:E_Companion/Screens/WelcomeScreen.dart';
import 'package:flutter/material.dart';
import 'constants.dart';




//import 'package:flutter_auth/Screens/Welcome/welcome_screen.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Auth',
      theme: ThemeData(
        primaryColor: Colors.white,
        scaffoldBackgroundColor: Colors.white,
      ),
     home: WelcomeScreen(),
     //home: HomeScreen(),

    );
  }
}
