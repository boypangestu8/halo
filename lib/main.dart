import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:halo/categories/categories_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: CategoriesScreen(),
    );
  }
}

