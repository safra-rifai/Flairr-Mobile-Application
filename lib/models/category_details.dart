import 'dart:ui';

import 'package:flutter/material.dart';

class Category{
  String name;
  String imgName;
  IconData icon;
  List<Category> subCategories;


  Category(
  {
    required this.name,
    required this.imgName,
    required this.icon,
    required this.subCategories
  }
      );
}