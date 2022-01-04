import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flairr_final_project/Screens/add_post.dart';
import 'package:flairr_final_project/Screens/category.dart';
import 'package:flairr_final_project/Screens/chat_room.dart';
import 'package:flairr_final_project/Screens/profile.dart';
import 'package:flairr_final_project/Screens/home.dart';
import 'package:flutter/material.dart';

// ignore_for_file: prefer_const_constructors
import 'dart:async';


class SubNavigation extends StatefulWidget{
  const SubNavigation({Key? key}) : super(key: key);


  @override
  _SubNavigationState createState() => _SubNavigationState();
}

class _SubNavigationState extends State<SubNavigation>{
  int index = 3;

  final screens =
  [
    HomeScreen(),
    CategoryScreen(),
    AddPostScreen(),
    ChatRoom(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    final items = <Widget>
    [
      Icon(Icons.home_outlined, size: 28),
      Icon(Icons.person_search_outlined, size: 28),
      Icon(Icons.add_circle_outline_rounded, size: 28),
      Icon(Icons.chat_outlined, size: 28),
      Icon(Icons.account_circle_outlined, size: 28),

    ];

    return Scaffold(
        extendBody: true,
        backgroundColor: Colors.grey[100],
        body: screens[index],
        bottomNavigationBar:
        Theme(
          data: Theme.of(context).copyWith(
            iconTheme: IconThemeData(color: Colors.deepPurple[700]),
          ),
          child: CurvedNavigationBar(
            backgroundColor: Colors.transparent,
            buttonBackgroundColor: Colors.white,
            height: 50,
            animationCurve: Curves.easeInOut,
            animationDuration: Duration(milliseconds: 300),
            index: index,
            items: items,
            onTap: (index) => setState(() => this.index = index),
          ),
        )
    );
  }


}