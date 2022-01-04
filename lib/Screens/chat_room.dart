// ignore_for_file: prefer_const_constructors


import 'package:flairr_final_project/Screens/user_search.dart';
import 'package:flairr_final_project/helper/authenticate.dart';
import 'package:flairr_final_project/services/authentication.dart';
import 'package:flutter/material.dart';


class ChatRoom extends StatefulWidget {
  const ChatRoom({Key? key}) : super(key: key);

  @override
  _ChatRoomState createState() => _ChatRoomState();
}

class _ChatRoomState extends State<ChatRoom> {

  AuthMethods authMethods = new AuthMethods();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
        appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            title: Text('Messages',
                style: TextStyle(
                  color: Colors.black,
                )),
        ),
        floatingActionButton: Align(
            alignment: Alignment(1, 0.8),
            child: FloatingActionButton(
            backgroundColor: Colors.deepPurple[700],
            child: Icon(Icons.search, size:26),
            onPressed: (){
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => UserSearch()));
            },
        )
        ),

    );
  }
}
