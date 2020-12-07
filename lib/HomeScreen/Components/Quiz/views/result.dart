import 'package:flutter/material.dart';
//import 'package:tfquiz/views/homepage.dart';
import 'package:E_Companion/HomeScreen/Components/Quiz/views/homepage.dart';
// import 'package:tfquiz/views/english_quiz_play.dart';
// import 'package:tfquiz/views/maths_quiz_play.dart';
// import 'package:tfquiz/views/science_quiz_play.dart';

class Result extends StatefulWidget {
  int score, totalQuestion, correct, incorrect, notattempted;

  Result(
      {this.score,
      this.totalQuestion,
      this.correct,
      this.incorrect,
      this.notattempted});

  @override
  _ResultState createState() => _ResultState();
}

class _ResultState extends State<Result> {
  String greeting = "";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    var percentage = (widget.score / (widget.totalQuestion)) * 100;

    if (percentage >= 90) {
      greeting = "Outstanding";
    } else if (percentage > 80 && percentage < 90) {
      greeting = "Good work";
    } else if (percentage > 70 && percentage < 80) {
      greeting = "Good effort";
    } else if (percentage < 70) {
      greeting = "Needs improvement";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text("$greeting", style: TextStyle(
              color: Colors.black,
              fontSize: 24,
              fontWeight: FontWeight.w500
            ),),
            SizedBox(height: 14,),
            Text(
                "You scored ${widget.score} out of ${widget.totalQuestion}", style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500
            ),),
            SizedBox(height: 8,),
            Text("${widget.correct} Correct"),
            Text("${widget.incorrect} Incorrect"),
            Text("${widget.notattempted} Not attempted"),
            Text("${widget.totalQuestion} Total questions"),

            SizedBox(height: 16,),
            // GestureDetector(
            //   onTap: () {
            //     Navigator.pushReplacement(
            //         context, MaterialPageRoute(builder: (context) => EQuizPlay()));
            //   },
            //   child: Container(
            //     padding: EdgeInsets.symmetric(vertical: 12, horizontal: 54),
            //     child: Text("Replay Quiz Now", style: TextStyle(
            //       color: Colors.white,
            //       fontSize: 18,
            //       fontWeight: FontWeight.w500
            //     ),),
            //     decoration: BoxDecoration(
            //       borderRadius: BorderRadius.circular(24),
            //       color: Colors.blue
            //     ),
            //   ),
            // ),
            SizedBox(height: 16,),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => QuizHomePage()));
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 54),
                child: Text("Go to Home", style: TextStyle(
                  color: Colors.blue,
                  fontSize: 15,
                  // fontWeight: FontWeight.w500
                ),),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  border: Border.all(color: Colors.blue, width: 2)
                  // color: Colors.blue
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
