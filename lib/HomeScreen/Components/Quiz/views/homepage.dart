import 'package:E_Companion/HomeScreen/Components/Quiz/views/quiz_page.dart';
import 'package:E_Companion/constants.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
//import 'package:tfquiz/views/quiz_page.dart';
//import other quiz_playssssss

class QuizHomePage extends StatefulWidget {
  @override
  _QuizHomePageState createState() => _QuizHomePageState();
}

class _QuizHomePageState extends State<QuizHomePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryLightColor,
      appBar: AppBar(
        backgroundColor: kPrimaryLightColor,
        elevation: 0.0,
        title: Text('Quiz',
        style: TextStyle(
          fontFamily: 'Varela',
          fontSize: 30.0,

          color: Color(0xFF545D68))
        ),
      ),

      body: ListView(
        
        padding: EdgeInsets.only(left: 20.0),
        children: <Widget>[
          SizedBox(height: 15.0),
          Text('Quizzes',
              style: TextStyle(
                fontFamily: 'Varela',
                fontSize: 30.0,
                // fontWeight: FontWeight.bold
              )),
          Text('Choose your class and attempt quizzes',
              style: TextStyle(
                  fontFamily: 'Varela', fontSize: 18.0, color: Colors.black38
                  // fontWeight: FontWeight.bold
                  )),
          SizedBox(height: 15.0),
          TabBar(
              controller: _tabController,
              indicatorColor: Colors.transparent,
              labelColor: Color(0xFFC88D67),
              isScrollable: true,
              labelPadding: EdgeInsets.only(right: 45.0),
              unselectedLabelColor: Color(0xFFCDCDCD),
              tabs: [
                Tab(
                  child: Text('Class1',
                      style: TextStyle(
                        fontFamily: 'Varela',
                        fontSize: 21.0,
                      )),
                ),
                Tab(
                  child: Text('Class2',
                      style: TextStyle(
                        fontFamily: 'Varela',
                        fontSize: 21.0,
                      )),
                ),
                Tab(
                  child: Text('Class3',
                      style: TextStyle(
                        fontFamily: 'Varela',
                        fontSize: 21.0,
                      )),
                )
              ]),
          Container(
              color: kPrimaryColor,
              height: MediaQuery.of(context).size.height - 50.0,
              width: double.infinity,
              child: TabBarView(controller: _tabController, children: [
                QuizPage(),
                QuizPage(),
                QuizPage(),
              ]))
        ],
      ),
    );
  }
}
