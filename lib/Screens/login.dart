// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flairr_final_project/Widgets/input_decoration_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  final Function toggle;
  LoginScreen(this.toggle);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          padding: EdgeInsets.all(0),
            child: Container(
                height: MediaQuery.of(context).size.height -50,
                alignment: Alignment.bottomCenter,
                child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          TextField(
                            style: simpleTextStyle(),
                            decoration: textFieldInputDecoration('email'),
                          ),
                          SizedBox(height:16),
                          TextField(
                            style: simpleTextStyle(),
                            decoration: textFieldInputDecoration('password'),
                          ),
                          SizedBox(height: 8,),
                          Container(
                              alignment: Alignment.bottomRight,
                              child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 16, vertical: 8),
                                  child: Text(
                                    "Forgot Password?",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.blue,
                                    ),
                                  ))
                          ),
                          SizedBox(height: 40,),
                          Container(
                            alignment: Alignment.center,
                            width: MediaQuery.of(context).size.width,
                            padding: EdgeInsets.symmetric(vertical: 18),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                gradient: LinearGradient(
                                  colors: [
                                    const Color(0xff512da8),
                                    const Color(0xff512da8)
                                  ],
                                )),
                            child: Text("Sign In", style: TextStyle(
                              color: Colors.white, fontSize: 17,
                            ),
                            ),
                          ),
                          SizedBox(height: 12,),
                          Container(
                            alignment: Alignment.center,
                            width: MediaQuery.of(context).size.width,
                            padding: EdgeInsets.symmetric(vertical: 18),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.deepPurple[50],
                            ),
                            child: Text("Sign in with Google", style: TextStyle(
                              color: Colors.black, fontSize: 17,
                            ),
                            ),
                          ),
                          SizedBox(height:15,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Don't have an account? ",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
                                ),
                              ),
                              GestureDetector(
                                  onTap: (){
                                    widget.toggle();
                                  },
                                  child: Container(
                                    padding: EdgeInsets.symmetric(vertical: 8),
                                    child: Text(
                                      "Sign Up",
                                      style: TextStyle(
                                        color: Colors.blue,
                                        fontSize: 14,),
                                    ),
                                  )
                              )
                            ],
                          ),
                          SizedBox(height: 20,),
                        ]
                    )
                )
            )
        )
    );
  }
}
