// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class AddPostScreen extends StatefulWidget{
  const AddPostScreen({Key? key}) : super(key: key);


  @override
  _AddPostScreenState createState() => _AddPostScreenState();
}

class _AddPostScreenState extends State<AddPostScreen>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
        body: Center(
            child: Text(
              'Add Post',
        style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 30,
            )
        )
        )
    );
  }
}