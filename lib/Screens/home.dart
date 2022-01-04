// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget{
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>{


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          backgroundColor: Colors.deepPurple[700],
          title: Text("Flairr"),
          automaticallyImplyLeading: false,
          actions:[Padding(
            padding: const EdgeInsets.all(10.0),
            child: Icon(Icons.notifications, size: 30,),
          ),
          ],
        ),
      body: Padding(
      padding: EdgeInsets.all(20),
      child: Container(
        width: double.infinity,
        height:530,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
        ),
        child: Column(
          children: <Widget> [
            Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
              child: Column(
                children: <Widget> [
                  ListTile(
                    leading: Container(
                      width: 50.0,
                      height: 50.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black,
                            offset: Offset(0,2),
                            blurRadius: 3.0,
                          )
                        ]
                      ),
                      child: CircleAvatar(
                        child: ClipOval(
                          child: Image(
                            height: 50.0,
                            width: 50.0,
                            image: AssetImage('assets/photography/img 1.png'),
                            fit: BoxFit.cover,
                          )
                        )
                      )
                    ),
                    title: Text(
                      'safra_rifai',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      )
                    ),
                    subtitle: Text('3 min ago'),
                      trailing: IconButton(
                        icon: Icon(Icons.more_vert),
                        color: Colors.black,
                        onPressed: () => print('More'),
                      )
                    ),
                  Container(
                    margin: EdgeInsets.all(10),
                    width: double.infinity,
                    height: 350.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white,
                          offset: Offset(0,5),
                        )
                      ],
                      image: DecorationImage(
                        image: AssetImage('assets/photography/img 2.png'),
                        fit: BoxFit.fitWidth,
                      )
                    )
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal:10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Row(
                              children: <Widget>[
                                IconButton(
                                  icon: Icon(Icons.favorite_border),
                                  iconSize: 25.0,
                                  onPressed: () => print('like post'),
                                ),
                                Text(
                                    '786',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                    )
                                )
                              ]
                          ),
                          SizedBox(width:16),
                          Row(
                              children: <Widget>[
                                IconButton(
                                  icon: Icon(Icons.comment_outlined),
                                  iconSize: 25.0,
                                  onPressed: () => print('comment'),
                                ),
                                Text(
                                    '126',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                    )
                                   )
                                 ]
                                )
                              ]
                            ),
                          IconButton(
                            icon: Icon(Icons.bookmark_outline),
                            iconSize: 25.0,
                            onPressed: () => print('saved'),
                          )
                          ]
                        ),
                       )
                      ]
                    )
                  )
                ]
              )
            ),
        ),
    );
  }
}
