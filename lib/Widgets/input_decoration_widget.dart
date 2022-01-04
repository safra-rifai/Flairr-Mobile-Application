// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';


InputDecoration textFieldInputDecoration(String hintText) {
  return InputDecoration(
      hintText: hintText,
      hintStyle: TextStyle(color: Colors.grey),
      focusedBorder:
      UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
      enabledBorder:
      UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey)));
}

TextStyle simpleTextStyle() {
  return TextStyle(color: Colors.black, fontSize: 16);
}

