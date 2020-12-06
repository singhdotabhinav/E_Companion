import 'package:E_Companion/HomeScreen/Components/Courses/Course.dart';
import 'package:E_Companion/HomeScreen/Components/Quiz.dart';
import 'package:E_Companion/HomeScreen/Components/chatWindow.dart';
import 'package:E_Companion/HomeScreen/SideDrawer.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:E_Companion/constants.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  int _currentIndex=0;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
          drawer: drawer2,
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Container(
          alignment: Alignment.center,
                  child: Text(
            "E-Companion",
            style: TextStyle(color: Colors.black),
            ),
        ),
      ),
      body:_currentIndex==2?ChatPage():_currentIndex==0?Courses():Quiz(),
      //body: if(_currentIndex==2){}

      bottomNavigationBar: CurvedNavigationBar(
        index: _currentIndex,
        color: kPrimaryColor,
        animationDuration: Duration(milliseconds: 250),
        backgroundColor:kPrimaryLightColor ,
        buttonBackgroundColor: kPrimaryColor,
        height: 50,
        items: [
          Icon(Icons.video_call),
          Icon(Icons.fact_check),
          Icon(Icons.radio)
        ],
        onTap: (index){
          setState(() {
            _currentIndex=index;
          });
          debugPrint("Current Index is $index");
        },

        ),

    );
  }
}