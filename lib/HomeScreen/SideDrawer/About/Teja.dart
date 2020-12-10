import 'package:E_Companion/constants.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Teja extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 20,
          backgroundColor: kPrimaryColor,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          title: Container(
            alignment: Alignment(0.0,0.0),
            child: Text('E_Companion'),

            ),
        ),
        backgroundColor: kPrimaryLightColor,
        body: SafeArea(
          child: Column(
            children: <Widget>[
              SizedBox(height: 30.0),
              CircleAvatar(
                foregroundColor: kPrimaryColor,
                backgroundColor: kPrimaryLightColor,
                radius: 100.0,
                backgroundImage:
                    NetworkImage('https://i.imgur.com/8Th4Iry.jpg'),
              ),
              SizedBox(height: 7.0),
              Text(
                "Tejashree R",
                style: TextStyle(
                    fontFamily: 'Solway', fontSize: 30.0, color: kPrimaryColor),
              ),
              SizedBox(height: 3.0),
              Text(
                "Siddaganga Institute of Technology",
                style: TextStyle(
                  color: kPrimaryColor,
                  fontSize: 22.0,
                ),
              ),
              Text(
                "Tumakuru",
                style: TextStyle(
                  fontSize: 22.0,
                  color: kPrimaryColor,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                "Flutter | C++ |  | SQL | ML | DataScience",
                style: TextStyle(
                  fontSize: 20.0,
                  color: kPrimaryColor,
                ),
              ),
              SizedBox(
                width: 150.0,
                child: Divider(
                  color: Colors.white,
                ),
              ),
              InkWell(
                onTap: () {
                  launch("tel://9304430365");
                },
                child: Container(
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.white)),
                  padding: EdgeInsets.all(10.0),
                  margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.call,
                        size: 30.0,
                        color: kPrimaryColor,
                      ),
                      SizedBox(
                        width: 60.0,
                      ),
                      Text(
                        "+91-9304430365",
                        style: TextStyle(
                          fontSize: 23.0,
                          color: kPrimaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () async {
                  String url =
                      'https://mail.google.com/mail/u/0/?view=cm&fs=1&to=abhinav.solanki.singh@gmail.com&tf=1';
                  if (await canLaunch(url)) {
                    await launch(url);
                  } else {
                    throw 'Could not launch $url';
                  }
                },
                child: Container(
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.white)),
                  padding: EdgeInsets.all(10.0),
                  margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.email, size: 30.0, color: kPrimaryColor),
                      SizedBox(
                        width: 20.0,
                      ),
                      Text(
                        "G-Mail",
                        style: TextStyle(
                          fontSize: 20.0,
                          color: kPrimaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () async {
                  String url = 'https://github.com/singhdotabhinav';
                  if (await canLaunch(url)) {
                    await launch(url);
                  } else {
                    throw 'Could not launch $url';
                  }
                },
                child: Container(
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.white)),
                  padding: EdgeInsets.all(10.0),
                  margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.device_hub,
                        size: 30.0,
                        color: kPrimaryColor,
                      ),
                      SizedBox(
                        width: 55.0,
                      ),
                      Text(
                        "Github",
                        style: TextStyle(
                          fontSize: 20.0,
                          color: kPrimaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () async {
                  String url = 'https://www.linkedin.com/in/dotabhinav/';
                  if (await canLaunch(url)) {
                    await launch(url);
                  } else {
                    throw 'Could not launch $url';
                  }
                },
                child: Container(
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.white)),
                  padding: EdgeInsets.all(10.0),
                  margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.domain,
                        size: 30.0,
                        color: kPrimaryColor,
                      ),
                      SizedBox(
                        width: 50.0,
                      ),
                      Text(
                        "Linkedin",
                        style: TextStyle(
                          fontSize: 20.0,
                          color: kPrimaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () async {
                  String url = 'https://twitter.com/singhdotabhinav';
                  if (await canLaunch(url)) {
                    await launch(url);
                  } else {
                    throw 'Could not launch $url';
                  }
                },
                child: Container(
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.white)),
                  padding: EdgeInsets.all(10.0),
                  margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.check_circle,
                        size: 30.0,
                        color: kPrimaryColor,
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Text(
                        "Twitter",
                        //textAlign: TextAlignVertical.center,
                        style: TextStyle(
                          fontSize: 20.0,
                          color: kPrimaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () async {
                  String url = 'https://www.instagram.com/singhdotabhinav/';
                  if (await canLaunch(url)) {
                    await launch(url);
                  } else {
                    throw 'Could not launch $url';
                  }
                },
                child: Container(
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.white)),
                  padding: EdgeInsets.all(10.0),
                  margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.image,
                        size: 30.0,
                        color: kPrimaryColor,
                      ),
                      SizedBox(
                        width: 40.0,
                      ),
                      Text(
                        "Instagram",
                        style: TextStyle(
                          fontSize: 20.0,
                          color: kPrimaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// onPressed: () async{
//         String url = ytlink;
//         if (await canLaunch(url)) {
//           await launch(url);
//         } else {
//           throw 'Could not launch $url';
//         }
//       }
