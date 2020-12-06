import 'package:E_Companion/constants.dart';
import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

class Courses extends StatefulWidget {
  @override
  _CoursesState createState() => _CoursesState();
}

class _CoursesState extends State<Courses> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryLightColor,
      body: SingleChildScrollView(
        child: Container(
          // child: Text('this is course tab',style: TextStyle(color: Colors.black),),
          child: Column(children: [
            
            SubjectCard("English","https://www.youtube.com/watch?v=tYPDolKfeZY&ab_channel=NoorChahal", MediaQuery.of(context).size.width),
            //SubjectCard("Maths","https://www.youtube.com/watch?v=tYPDolKfeZY&ab_channel=NoorChahal", MediaQuery.of(context).size.width),
            //SubjectCard("Science","https://www.youtube.com/watch?v=tYPDolKfeZY&ab_channel=NoorChahal",MediaQuery.of(context).size.width),
          ]),
        ),
      ),
    );
  }
}

Widget SubjectCard(String subject,String ytlink, double width) {
  return Padding(
    padding: const EdgeInsets.only(top: 20.0),
    child: FlatButton(
      onPressed: () async{
        String url = ytlink;
        if (await canLaunch(url)) {
          await launch(url);
        } else {
          throw 'Could not launch $url';
        }
      },
     
      child: Container(
        alignment: Alignment(0.0, 0.0),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              blurRadius: 2.0,
              spreadRadius: 0.0,
              offset: Offset(2.0, 2.0), // shadow direction: bottom right
            )
          ],
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment(
                0.8, 0.0), // 10% of the width, so there are ten blinds.
            colors: [
              kPrimaryColor,
              kPrimaryLightColor,
            ],
          ),
        ),
        width: width,
        height: 150,
        child: Text(
          '$subject',
          style: TextStyle(color: Colors.black54, fontSize: 50.0),
          textAlign: TextAlign.center,
        ),
      ),
    ),
  );
}


