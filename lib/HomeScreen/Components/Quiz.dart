import 'package:E_Companion/constants.dart';
import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  @override
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryLightColor,
      body:Container(
       child: Text('this is quiz tab',style: TextStyle(color: Colors.black),),
       
    ) ,
    );
  }
}