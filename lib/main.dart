import 'package:firebase_core/firebase_core.dart';
import 'package:flairr_final_project/helper/authenticate.dart';
import 'package:flutter/material.dart';
import 'package:flairr_final_project/Screens/login.dart';

import 'dart:ui';

// ignore_for_file: prefer_const_constructors
import 'dart:async';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}
// ignore: use_key_in_widget_constructors

class MyApp extends StatelessWidget {

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(


      ),
      debugShowCheckedModeBanner: false,
      home: Authenticate(),
    );
  }

}

