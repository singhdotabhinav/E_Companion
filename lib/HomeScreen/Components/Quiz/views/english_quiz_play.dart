import 'package:E_Companion/HomeScreen/Components/Quiz/data/englishdata.dart';
import 'package:E_Companion/HomeScreen/Components/Quiz/model/Equestionmodel.dart';
import 'package:E_Companion/HomeScreen/Components/Quiz/views/result.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
//import 'package:tfquiz/data/englishdata.dart';
//import 'package:tfquiz/model/Equestionmodel.dart';
//import 'package:tfquiz/views/result.dart';

class EQuizPlay extends StatefulWidget {
  @override
  _EQuizPlayState createState() => _EQuizPlayState();
}

class _EQuizPlayState extends State<EQuizPlay>
    with SingleTickerProviderStateMixin {
  List<EQuestionModel> _Equestions = new List<EQuestionModel>();

  int index = 0;
  int correct = 0, incorrect = 0, notAttempted = 0, points = 0;

  double beginAnim = 0.0;
  double endAnim = 1.0;

  Animation animation;
  AnimationController animationController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _Equestions = getEQuestion();
    
        animationController = AnimationController(
            duration: const Duration(seconds: 10), vsync: this)
          // animation = Tween(begin: beginAnim, end: endAnim).animate(animationController)
          ..addListener(() {
            setState(() {});
          });
    
        animation =
            Tween(begin: beginAnim, end: endAnim).animate(animationController);
        startAnim();
    
        animationController.addStatusListener((AnimationStatus status) {
          if (status == AnimationStatus.completed) {
            setState(() {
              if (index < _Equestions.length - 1) {
                index++;
                resetAnim();
                startAnim();
                notAttempted++;
              } else {
                notAttempted++;
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Result(
                        score: points,
                        totalQuestion: _Equestions.length,
                        correct: correct,
                        incorrect: incorrect,
                        notattempted: notAttempted,
                      )
                ));
              }
            });
          }
        });
      }
    
      startAnim() {
        animationController.forward();
      }
    
      resetAnim() {
        animationController.reset();
      }
    
      stopAnim() {
        animationController.stop();
      }
    
      void nextQuestion() {
        if (index < _Equestions.length - 1) {
          index++;
          resetAnim();
          startAnim();
        } else {
          Navigator.pushReplacement(context, MaterialPageRoute(
            builder: (context) => Result(
              score: points,
              totalQuestion: _Equestions.length,
              correct: correct,
              incorrect: incorrect,
              notattempted: notAttempted,
            )
          ));
        }
      }
    
      @override
      Widget build(BuildContext context) {
        return Scaffold(
          body: Container(
            padding: EdgeInsets.symmetric(vertical: 80),
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        "${index + 1}/ ${_Equestions.length}",
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "Question",
                        style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
                      ),
                      Spacer(),
                      Text(
                        "$points",
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "Points",
                        style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  "${_Equestions[index].getEQuestion()}?",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                ),
                SizedBox(
                  height: 20,
                ),
                LinearProgressIndicator(
                  value: animation.value,
                ),
                CachedNetworkImage(
                  imageUrl: _Equestions[index].getEImageUrl(),
                ),
                Spacer(),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            if (_Equestions[index].getEAnswer() == "True") {
                              setState(() {
                                points = points + 1;
                                // index++;
                                nextQuestion();
                                correct++;
                                // resetAnim();
                                // startAnim();
                              });
                            } else {
                              setState(() {
                                points = points - 1;
                                // index++;
                                nextQuestion();
                                incorrect++;
                                // resetAnim();
                                // startAnim();
                              });
                            }
                          },
                          child: Container(
                            alignment: Alignment.center,
                            padding: EdgeInsets.symmetric(vertical: 12),
                            child: Text(
                              "True",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500),
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(24),
                                color: Colors.blue),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            if (_Equestions[index].getEAnswer() == "False") {
                              setState(() {
                                points = points + 1;
                                // index++;
                                nextQuestion();
                                correct++;
                                // resetAnim();
                                // startAnim();
                              });
                            } else {
                              setState(() {
                                points = points - 1;
                                // index++;
                                nextQuestion();
                                incorrect++;
                                // resetAnim();
                                // startAnim();
                              });
                            }
                          },
                          child: Container(
                            alignment: Alignment.center,
                            padding: EdgeInsets.symmetric(vertical: 12),
                            child: Text(
                              "False",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500),
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(24),
                                color: Colors.red),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      }
    
      @override
      void dispose() {
        // TODO: implement dispose
        animationController.dispose();
        super.dispose();
      }
    
      // List<EQuestionModel> getEQuestion() {}
}
