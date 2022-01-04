
// ignore_for_file: prefer_const_constructors, prefer_const_declarations, prefer_const_literals_to_create_immutables

import 'package:flairr_final_project/Widgets/profile_appbar_widget.dart';
import 'package:flairr_final_project/Widgets/profile_image_widget.dart';
import 'package:flairr_final_project/Widgets/tab_bar_widget.dart';
import 'package:flairr_final_project/models/user_profile.dart';
import 'package:flutter/material.dart';
import 'package:flairr_final_project/Screens/user_preferences.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    final User = UserPreferences.userProfile;

    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: buildAppBar(context),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          ProfileImageWidget(
            imagePath: User.imagePath,
            onClicked: () async {},
          ),
          const SizedBox(height: 20),
          buildUserName(User),
          const SizedBox(height: 16),
          buildAbout(User),
          const SizedBox(height: 40),
          ProfileTapBar(),
        ],

      ),
    );
  }


  Widget buildUserName(User user) =>
      Column(
          children: [
            Text(
                user.name,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                )
            ),
            const SizedBox(height: 5),
            Text(
              user.profession,
              style: TextStyle(color: Colors.black),
            ),
            const SizedBox(height: 5),
            Text(
              user.email,
              style: TextStyle(color: Colors.grey[600]),
            ),
          ]
      );


  Widget buildAbout(User user) => Container(
    padding: EdgeInsets.symmetric(horizontal: 20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:[
        Text(
            'About',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)
        ),
        const SizedBox(height:10),
        Text(
            user.about,
            style: TextStyle(fontSize: 14, height: 1)
        ),
      ],
    ),
  );

}
