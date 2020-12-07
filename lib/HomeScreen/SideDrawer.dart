import 'package:E_Companion/HomeScreen/HomeScreen.dart';
import 'package:E_Companion/Screens/Home/home_screen.dart';
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
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 80.0,
            ),
            Container(
              alignment: Alignment(0.0, 0.0),
              height: 30,
              width: MediaQuery.of(context).size.width / 2,
              color: Colors.black,
              child: FlatButton(
                child: Text(
                  'Signout',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  print('Pressed');
                  signOut();
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => HomeScreen()),
                  // );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
