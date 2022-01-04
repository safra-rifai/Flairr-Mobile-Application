// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flairr_final_project/Screens/category_list.dart';
import 'package:flutter/material.dart';
import 'package:flairr_final_project/models/category_details.dart';

class CategoryScreen extends StatefulWidget{
  const CategoryScreen({Key? key}) : super(key: key);


  @override
  _CategoryScreenState createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {

  List<Category> categories = Professional.getMockedCategories();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
            backgroundColor: Colors.deepPurple[700],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(25),
              ),
            ),
            elevation: 5.0,
            leading: Container(),
            title: FlatButton(
              onPressed: () {},
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Which professional are you looking for?',
                      style: TextStyle(color: Colors.white)),
                ],
              ),
            ),
            centerTitle: true,
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(50),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'search',
                      prefixIcon: Icon(
                          Icons.search_rounded, color: Colors.white),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none,
                      ),
                      contentPadding: EdgeInsets.zero,
                      filled: true,
                      fillColor: Colors.white.withOpacity(0.4),
                  ),
                ),
              ),
            )
        ),
        body: Container(
            child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                  ),
                  Expanded(
                      child: ListView.builder(
                          itemCount: categories.length,
                          itemBuilder: (BuildContext ctx, int index) {
                            return Container(
                                margin: EdgeInsets.all(10),
                                height: 180,
                                child: Stack(
                                  children: [
                                    Positioned.fill(
                                      child: ClipRRect(
                                          borderRadius: BorderRadius.circular(
                                              30),
                                          child: Image.asset('assets/images/' +
                                              categories[index].imgName,
                                            fit: BoxFit.cover,
                                          )
                                      ),
                                    ),
                                    Positioned(
                                    bottom: 0,
                                    left: 0,
                                    right: 0,
                                    child: Container(
                                        height: 120,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(30),
                                            bottomRight: Radius.circular(30),),
                                            gradient: LinearGradient(
                                                begin: Alignment.bottomCenter,
                                                end: Alignment.topCenter,
                                                colors: [
                                                  Colors.black.withOpacity(0.7),
                                                  Colors.transparent,
                                                ]
                                            )
                                        )
                                    ),
                                    ),
                                    Positioned(
                                    bottom:15,
                                    left:20,
                                    child: Container(
                                      child: Text(
                                        categories[index].name,
                                        style:TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                        )
                                      )
                                    )
                                    ),
                                  ],
                                )
                            );
                          }
                      )
                  )
                ]
            )
        )
    );
  }
}


