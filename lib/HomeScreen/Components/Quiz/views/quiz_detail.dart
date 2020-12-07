import 'package:E_Companion/HomeScreen/Components/Quiz/views/english_quiz_play.dart';
import 'package:E_Companion/HomeScreen/Components/Quiz/views/maths_quiz_play.dart';
import 'package:E_Companion/HomeScreen/Components/Quiz/views/science_quiz_play.dart';
import 'package:flutter/material.dart';
// import 'package:tfquiz/views/all_quiz_play.dart';
// import 'package:tfquiz/views/english_quiz_play.dart';
// import 'package:tfquiz/views/maths_quiz_play.dart';
// import 'package:tfquiz/views/science_quiz_play.dart';


class QuizDetail extends StatelessWidget {
  final assetPath, subjectname;

  QuizDetail({this.assetPath, this.subjectname});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Color(0xFF545D68)),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text('Quiz',
            style: TextStyle(
                fontFamily: 'Varela',
                fontSize: 20.0,
                color: Color(0xFF545D68))),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.notifications_none, color: Color(0xFF545D68)),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
      body: ListView(children: [
        SizedBox(height: 15.0),
        Padding(
          padding: EdgeInsets.only(left: 20.0),
          child: Text(subjectname,
              style: TextStyle(
                fontFamily: 'Varela',
                fontSize: 42.0,
                fontWeight: FontWeight.bold,
                color: Color(0xFFF17532),
              )),
        ),
        SizedBox(height: 15.0),
        Hero(
            tag: assetPath,
            child: Image.asset(assetPath,
                height: 150.0, width: 100.0, fit: BoxFit.contain)),
        SizedBox(height: 30.0),
        // SizedBox(height: 10.0),
        Center(
          child: Text("$subjectname Quiz",
              style: TextStyle(
                  color: Color(0xFF575E67),
                  fontFamily: 'Varela',
                  fontSize: 24.0)),
        ),
        SizedBox(height: 20.0),
        Center(
          child: Container(
            width: MediaQuery.of(context).size.width - 50.0,
            child: Text(
                'Take up the quiz and test your knowlegde in the subject.\nAll the Best!!',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'Varela',
                    fontSize: 16.0,
                    color: Color(0xFFB4B8B9))),
          ),
        ),
        SizedBox(height: 20.0),
        Center(
            child: Container(
                width: MediaQuery.of(context).size.width - 50.0,
                height: 50.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  color: Color(0xFFF17532)),
                  child: GestureDetector(
                    onTap: () {
                      // MaterialPageRoute(builder: (context) => AllQuizPlay()
                        if(subjectname == "English"){
                            Navigator.pushReplacement(context,MaterialPageRoute(
                            builder: (context) => EQuizPlay()
                          ));
                        }
                        if(subjectname == "Maths"){
                            Navigator.pushReplacement(context,MaterialPageRoute(
                            builder: (context) => MQuizPlay()
                          ));
                        }
                        if(subjectname == "Science"){
                            Navigator.pushReplacement(context,MaterialPageRoute(
                            builder: (context) => SQuizPlay()
                          ));
                        }  
                    },
                    child: Center(
                      child: Text(
                        'Start Quiz Now', style: TextStyle(
                            fontFamily: 'Varela',
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                          ),
                        ),
                    ),
                  )
                  ))
      ]),
    );
  }
}
