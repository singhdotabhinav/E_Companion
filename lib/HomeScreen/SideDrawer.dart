import 'package:E_Companion/HomeScreen/HomeScreen.dart';
import 'package:E_Companion/Screens/Home/home_screen.dart';
import 'package:E_Companion/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

//final Future<FirebaseApp> _initialization = Firebase.initializeApp();
final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

signOut() async {
  await _firebaseAuth.signOut();
}

var drawer2 = Drawer(
    child: SingleChildScrollView(
  child: Column(
    children: <Widget>[
      Container(
        alignment: Alignment(0.0, 0.0),
        width: 40.0,
        height: 40.0,
        color: Colors.black,
      )
    ],
  ),
));

class SideDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 20.0,
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            color: kPrimaryColor,
            child: Center(
              child: Column(
                children: <Widget>[
                  Container(
                      width: 100,
                      height: 100,
                      margin: EdgeInsets.only(top: 30.0, bottom: 20.0),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage('assets/robot.png'),
                              fit: BoxFit.fill)
                              )
                   ),
                  Text(
                    'Abhinav Kumar',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white
                    )
                  ),
                  Text(
                    'abhinav@gmail.com',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white
                    )
                  ),
                  Text(
                    'Class 1',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white
                    )
                  )
                ],
              ),
            ),
          ),
          ListTile(
            leading:Icon(Icons.person),
            title: Text('Account',style: TextStyle(fontSize: 17.0),),
            onTap: (){},
          ),
          ListTile(
            leading:Icon(Icons.settings_backup_restore),
            title: Text('Score',style: TextStyle(fontSize: 17.0),),
            onTap: (){},
          ),
          ListTile(
            leading:Icon(Icons.photo_album_outlined),
            title: Text('About',style: TextStyle(fontSize: 17.0),),
            onTap: (){},
          ),
          ListTile(
            leading:Icon(Icons.logout),
            title: Text('Logout',style: TextStyle(fontSize: 17.0),),
            onTap: (){},
          )
        ],
      ),
    );
  }
}
