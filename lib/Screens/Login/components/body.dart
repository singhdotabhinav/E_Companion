import 'package:flutter/material.dart';

import 'package:E_Companion/Screens/Login/components/background.dart';
import 'package:E_Companion/Screens/Signup/signup_screen.dart';
import 'package:E_Companion/components/already_have_an_account_acheck.dart';
import 'package:E_Companion/components/rounded_button.dart';
import 'package:E_Companion/components/rounded_input_field.dart';
import 'package:E_Companion/components/rounded_password_field.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_svg/svg.dart';
import 'package:E_Companion/HomeScreen/HomeScreen.dart';


class Body extends StatefulWidget {

  @override
  _BodyState createState() => _BodyState();
}
class _BodyState extends State<Body> {
  final _auth = FirebaseAuth.instance;

  String email;
  String password;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "LOGIN",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              "assets/icons/login.svg",
              height: size.height * 0.35,
            ),
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {
                email=value;
              },
            ),
            RoundedPasswordField(
              onChanged: (value) {
                password=value;
              },
            ),
            RoundedButton(
              text: "LOGIN",
              press: () async{
                try {
                  final user = await _auth.signInWithEmailAndPassword(
                      email: email, password: password);
                  if (user != null) {
                    Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                        //return HomeScreen();
                        return HomeScreen();
                        },
                    ),
                     );
                  }
                } catch (e){
                  print(e);
                }
              },
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
