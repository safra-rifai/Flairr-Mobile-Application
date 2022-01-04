// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ProfileTapBar extends StatefulWidget {
  const ProfileTapBar({Key? key}) : super(key: key);

  @override
  _ProfileTapBarState createState() => _ProfileTapBarState();
}

class _ProfileTapBarState extends State<ProfileTapBar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Container(
          child: TabBar(
                  tabs: [
                    Tab(icon: Icon(Icons.image_rounded, color: Colors.black)
                    ),
                    Tab(icon: Icon(Icons.attach_money_rounded, color: Colors.black45)
                    ),
                    Tab(icon: Icon(Icons.reviews_rounded, color: Colors.black45)
                    ),
                  ],
                ),
          ),
    );
  }
}

