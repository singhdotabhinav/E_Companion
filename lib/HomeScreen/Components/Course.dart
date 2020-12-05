import 'package:E_Companion/constants.dart';
import 'package:flutter/material.dart';

class Courses extends StatefulWidget {
  @override
  _CoursesState createState() => _CoursesState();
}

class _CoursesState extends State<Courses> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryLightColor,
      body:Container(
       child: Text('this is course tab',style: TextStyle(color: Colors.black),),
       
    ) ,
    );
  }
}


// Container(
//        child: Text('this is course tab',style: TextStyle(color: Colors.black),),
       
//    
// );