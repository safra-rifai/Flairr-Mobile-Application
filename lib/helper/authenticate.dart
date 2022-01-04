
import 'package:flairr_final_project/Screens/login.dart';
import 'package:flairr_final_project/Screens/signup.dart';
import 'package:flutter/material.dart';

class Authenticate extends StatefulWidget {
  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  bool showSignUp = true;

  void toggleView() {
    setState(() {
      showSignUp = !showSignUp;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showSignUp) {
      return SignUpScreen(toggleView);
    } else {
      return LoginScreen(toggleView);
    }
  }
}