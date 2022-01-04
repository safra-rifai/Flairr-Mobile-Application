// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors


import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flairr_final_project/Screens/chat_room.dart';
import 'package:flairr_final_project/Screens/nav_bar.dart';
import 'package:flairr_final_project/Screens/sub_nav.dart';
import 'package:flairr_final_project/Widgets/input_decoration_widget.dart';
import 'package:flairr_final_project/services/database.dart';
import 'package:flutter/material.dart';

class UserSearch extends StatefulWidget {
  const UserSearch({Key? key}) : super(key: key);

  @override
  _UserSearchState createState() => _UserSearchState();
}

class _UserSearchState extends State<UserSearch> {

  DatabaseMethods databaseMethods  = new DatabaseMethods();

  TextEditingController searchTextEditingController = new TextEditingController();

  late QuerySnapshot searchSnapshot;

  startSearch(){
    databaseMethods.getUserByUsername(searchTextEditingController.text)
        .then((val){
        searchSnapshot = val;
    });
  }

  Widget searchList(){
    return ListView.builder(
        itemCount: 3
        ,
        shrinkWrap: true,
        itemBuilder: (context, index){
          return SearchTile(
            userName: "Safra Rifai",
            userEmail: "aysh.safra@gmail.com",
          );
        }) ;
  }

  @override
  void initState() {
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => SubNavigation()));
              },
              child: Icon(Icons.arrow_back, color: Colors.deepPurple[700]),
            ),
          ),
        ),
        body: Container(
            child: Column(
                children: [
                  Container(
                      color: Colors.grey[300],
                      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                      child: Row(
                        children:[
                          Expanded(
                            child: TextField(
                                controller: searchTextEditingController,
                                decoration: InputDecoration(
                                  hintText: "search user",
                                  hintStyle: TextStyle(
                                    color: Colors.grey[600],
                                  ),
                                  border: InputBorder.none,
                                )
                            ),
                          ),
                          GestureDetector(
                              onTap: (){
                                startSearch();
                              },
                              child: ElevatedButton(
                                onPressed: () {},
                                child: Icon(Icons.search_rounded, color: Colors.white),
                                style: ElevatedButton.styleFrom(
                                  shape: CircleBorder(),
                                  padding: EdgeInsets.all(12),
                                  primary: Colors.black, // <-- Button color
                                  onPrimary: Colors.deepPurple[700], // <-- Splash color
                                ),
                              )
                          ),
                        ],
                      )
                  ),
                  searchList()
                ]
            )
        )
    );
  }
}


class SearchTile extends StatelessWidget {
  final String userName;
  final String userEmail;
  SearchTile({required this.userName, required this.userEmail});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
        child: Row(
            children: [
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:[
                    Text(userName, style: simpleTextStyle()),
                    Text(userEmail, style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 14,
                    )),
                  ]
              ),
              Spacer(),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.deepPurple[700],
                ),
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                child: Text('Message',
                    style: TextStyle(
                      color: Colors.white,
                    )),
              )
            ]
        )
    );
  }
}

