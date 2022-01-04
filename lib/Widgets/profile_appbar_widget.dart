// ignore_for_file: prefer_const_constructors

import 'package:flairr_final_project/Screens/nav_bar.dart';
import 'package:flairr_final_project/helper/authenticate.dart';
import 'package:flairr_final_project/services/authentication.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

AppBar buildAppBar(BuildContext context){
  final icon = CupertinoIcons.moon;

   return AppBar(
       backgroundColor: Colors.transparent,
       elevation: 0,
       toolbarHeight: 60,
       leading: IconButton(
         icon: Icon(icon),
         color: Colors.black,
         onPressed: () {
         },
       ),
       actions:[
         GestureDetector(
           onTap: ()
           {
             AuthMethods().signOut();
             Navigator.pushReplacement(context,
                 MaterialPageRoute(builder: (context) => Authenticate()));
           },
           child: Container(
               padding: EdgeInsets.symmetric(horizontal: 16),
               child: Icon(Icons.logout, color: Colors.black)),
         )
       ]
   );
}

