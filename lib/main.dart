//import 'package:E_Companion/chatWindow.dart';
//import 'package:E_Companion/Screens/Welcome/welcome_screen.dart';
import 'package:E_Companion/HomeScreen/HomeScreen.dart';
import 'package:E_Companion/Screens/Welcome/welcome_screen.dart';
import 'package:firebase_core/firebase_core.dart';
//import 'package:E_Companion/Screens/WelcomeScreen.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
//import 'lib\HomeScreen\Components\Courses\Course.dart';
import 'package:E_Companion/HomeScreen/Components/Courses/Course.dart';




//import 'package:flutter_auth/Screens/Welcome/welcome_screen.dart';


//void main() => runApp(MyApp());


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //await Firebase.initializeApp();
  await Firebase.initializeApp();
  runApp(MyApp());
}

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
     //home:Courses(),

     //home: HomeScreen(),

    );
  }
}
