import 'package:E_Companion/HomeScreen/Components/Quiz/views/quiz_detail.dart';
import 'package:flutter/material.dart';
// import 'package:fluttercookie/quiz_detail.dart';
//import 'package:tfquiz/views/quiz_detail.dart';

class QuizPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Color(0xFFFCFAF8),
      // backgroundColor: Colors.black,
      body: ListView(
        children: <Widget>[
          SizedBox(height: 15.0),
          Container(
            padding: EdgeInsets.only(right: 15.0),
            width: MediaQuery.of(context).size.width - 30.0,
            height: MediaQuery.of(context).size.height - 50.0,
            child: GridView.count(
              crossAxisCount: 2,
              primary: false,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 15.0,
              childAspectRatio: 0.8,
              children: <Widget>[
                _buildCard('English', 'assets/english.jpg', false, context),
                _buildCard('Maths', 'assets/maths.jpg', false, context),
                _buildCard('Science', 'assets/science.jpg', false, context),
              ],
            )
          ),
          SizedBox(height: 15.0)
        ],
      ),
    );
  }

  Widget _buildCard(
      String name, String imgPath, bool added, context) {
        return Padding(
          padding: EdgeInsets.only(top: 5.0, bottom: 5.0, left: 5.0, right: 5.0),
          child: InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => QuizDetail(
                      assetPath: imgPath,
                      subjectname: name
                  )
                )
              );
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 3.0,
                    blurRadius: 5.0)
                ],
                color: Colors.white
              ),
              child: Column(children: [
                Padding(
                  padding: EdgeInsets.all(5.0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        
                    )
                  ),
                  Hero(
                    tag: imgPath,
                    child: Container(
                      height: 75.0,
                      width: 75.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(imgPath),
                          fit: BoxFit.contain
                        )
                      )
                    )
                  ),
                  SizedBox(height: 7.0),
                  
                  Text(name, style: TextStyle(
                      color: Color(0xFF575E67),
                      fontFamily: 'Varela',
                      fontSize: 14.0
                    )
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Container(
                      color: Color(0xFFEBEBEB), 
                      height: 1.0
                    )
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 5.0, right: 5.0, top: 10.0,),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          // if (!added) ...[
                            Text('Tap to start quiz', style: TextStyle(
                              fontFamily: 'Varela',
                              color: Color(0xFFD17E50),
                              fontSize: 12.0
                            )
                          )
                        ],
                      // ]
                    )
                  )
                ]
              )
            )
          )
        );
  }
}
