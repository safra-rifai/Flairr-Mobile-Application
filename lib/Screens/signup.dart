// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables


import 'package:flairr_final_project/Screens/chat_room.dart';
import 'package:flairr_final_project/Screens/home.dart';
import 'package:flairr_final_project/Screens/nav_bar.dart';
import 'package:flairr_final_project/Widgets/input_decoration_widget.dart';
import 'package:flairr_final_project/services/authentication.dart';
import 'package:flairr_final_project/services/database.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  final Function toggle;
  SignUpScreen(this.toggle);


  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

bool _passwordVisible = false;

void initState() {
  _passwordVisible = false;
}

class _SignUpScreenState extends State<SignUpScreen> {

  bool isLoading = false;

  AuthMethods authMethods = new AuthMethods();
  DatabaseMethods databaseMethods  = new DatabaseMethods();

  final formKey = GlobalKey<FormState>();

  TextEditingController emailEditingController = new TextEditingController();
  TextEditingController passwordEditingController = new TextEditingController();
  TextEditingController usernameEditingController =new TextEditingController();

  SignUpUser(){
    if(formKey.currentState!.validate()){

      Map<String, String> mapUserInfo = {
        "username": usernameEditingController.text,
        "email": emailEditingController.text,
      };

      setState(() {
        isLoading: true;
      });
      authMethods.signUpWithEmailAndPassword(emailEditingController.text,
          passwordEditingController.text).then((val){

        databaseMethods.uploadUserInfo(mapUserInfo);
        Navigator.pushReplacement(context, MaterialPageRoute(
            builder: (context) => NavigationScreen()
        ));
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: isLoading ? Container(
          child: Center(child: CircularProgressIndicator()),
        ) : SingleChildScrollView(
            child: Container(
                height: MediaQuery.of(context).size.height -50,
                alignment: Alignment.bottomCenter,
                child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Form(
                            key: formKey,
                            child: Column(
                              children: [
                                TextFormField(
                                  validator: (val){
                                    return val!.isEmpty || val.length < 3 ? "Username has to be atleast 3 characters long" : null;
                                  },
                                  controller: usernameEditingController,
                                  style: simpleTextStyle(),
                                  decoration: textFieldInputDecoration('username'),
                                ),
                                SizedBox(height: 16),
                                TextFormField(
                                  validator: (val){
                                    return RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(val!) ?
                                    null : "Enter valid email";
                                  },
                                  controller: emailEditingController,
                                  style: simpleTextStyle(),
                                  decoration: textFieldInputDecoration('email'),
                                ),
                                SizedBox(height: 16),
                                TextFormField(
                                  validator:  (val){
                                    return val!.length < 6 ? "Password has to be atleast 6 characters long" : null;
                                  },
                                  obscureText: true,
                                  controller: passwordEditingController,
                                  style: simpleTextStyle(),
                                  decoration: textFieldInputDecoration('password',),
                                ),
                              ],),
                          ),
                          SizedBox(height: 60,),
                          GestureDetector(
                            onTap: (){
                              SignUpUser();
                            },
                            child: Container(
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
                              child: Text("Sign Up", style: TextStyle(
                                color: Colors.white, fontSize: 17,
                              ),
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
                            child: Text("Sign up with Google", style: TextStyle(
                              color: Colors.black, fontSize: 17,
                            ),
                            ),
                          ),
                          SizedBox(height:15,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Already have an account? ",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
                                ),
                              ),
                              GestureDetector(
                                onTap:(){
                                  widget.toggle();
                                },
                                child: Container(
                                  padding: EdgeInsets.symmetric(vertical: 20),
                                  child: Text(
                                    "Sign In",
                                    style: TextStyle(
                                      color: Colors.blue,
                                      fontSize: 14,),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10,),
                        ]
                    )
                )
            )
        )
    );
  }
}

