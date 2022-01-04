// ignore_for_file: prefer_const_constructors, prefer_final_fields, prefer_const_literals_to_create_immutables, unnecessary_new

import 'package:flutter/material.dart';

import 'dart:async';

import 'home.dart';

class BusinessTypeSignupScreen extends StatefulWidget{
  const BusinessTypeSignupScreen({Key? key}) : super(key: key);

  /*final String title;*/

  @override
  _BusinessTypeSignupScreenState createState() => _BusinessTypeSignupScreenState();

}

  class _BusinessTypeSignupScreenState extends State<BusinessTypeSignupScreen>{
    var selectedBusinessType;
    final GlobalKey<FormState> _formKeyValue = new GlobalKey<FormState>();
    List<String> _businessType = <String>[
      "Photographer",
      "Henna Designer",
      "Baker",
      "Cosmetologist",
      "Caterer",
      "Florist"
    ];



    @override
    Widget build(BuildContext context) {

      final signupButton = Material(
        elevation: 0,
        borderRadius: BorderRadius.circular(30),
        color: Colors.pinkAccent,
        child: MaterialButton(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            minWidth: 100.0,
            onPressed: () {
              /*signUp(emailEditingController.text, passwordEditingController.text);*/
            },
            child: Text(
              "Sign up",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 20, color: Colors.white, fontWeight: FontWeight.w400),
            )),
      );

      return Scaffold(
          body: Center(
            child: Form(
            key: _formKeyValue,
            autovalidate: true,
            // ignore: unnecessary_new
            child: new ListView(
              children: <Widget>[
                SizedBox(height: 200.0),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                        child: Image.asset(
                          "assets/business_type.png",
                          height: 80,
                          width: 80,
                          fit: BoxFit.contain,
                        )),
                    SizedBox(height: 50.0),
                    DropdownButton(
                      items: _businessType
                          .map((value) => DropdownMenuItem(
                        child: Text(
                          value,
                          style: TextStyle(color: Color(0xff343834)),
                        ),
                        value: value,
                      ))
                          .toList(),
                      onChanged: (selectedAccountType) {
                        print('$selectedAccountType');
                        setState(() {
                          selectedBusinessType = selectedAccountType;
                        });
                      },
                      value: selectedBusinessType,
                      isExpanded: false,
                      hint: Text(
                        'Select your business type',
                        style: TextStyle(color: Color(0xff484948)),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 150),
                signupButton,
                SizedBox(height: 15),

                Row(

                ),

              ],
            ),
          ))
      );
    }
  }