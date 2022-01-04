 // ignore_for_file: prefer_const_constructors

 import 'dart:ui';

import 'package:flutter/material.dart';

class ProfileImageWidget extends StatelessWidget {
  final String imagePath;
  final VoidCallback onClicked;

  const ProfileImageWidget({
    Key? key,
    required this.imagePath,
    required this.onClicked,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme.primary;

    return Center(
      child: Stack(
      children: [
        buildImage(),
        Positioned(
          bottom: 0,
          right: 4,
          child: buildEditIcon(color),
        ),
        ],
      ),
    );
    }

    Widget buildImage(){
    final image = NetworkImage(imagePath);

    return ClipOval(
      child: Material(
        color: Colors.transparent,
          child: Ink.image(
          image: image,
          fit: BoxFit.cover,
          width: 128,
          height: 128,
          child: InkWell(onTap: onClicked),
      ),
      ),
      );
  }

Widget buildEditIcon(Color color) => buildCircle(
  color: Colors.white,
  all: 2,
  child: buildCircle(
    color: Colors.indigo[800],
    all:6,
    child: Icon(
      Icons.edit,
      color: Colors.white,
      size: 20,
    ),
  ),
);

Widget buildCircle({
   required Widget child,
   required double all,
   required Color? color,
 }) =>

    ClipOval(
    child: Container(
    padding: EdgeInsets.all(all),
    color: color,
    child: child,
    ),
 );
 }

