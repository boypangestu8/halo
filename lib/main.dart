import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:halo/categories_controller.dart';

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

class CategoriesScreen extends StatelessWidget {
  final categoriesController = Get.put(CategoriesController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(14),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Categories",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Expanded(
                child: Center(
                  child: Obx(() {
                    if (categoriesController.isLoading.value) {
                      // bisa pakai circular progress
                      // bisa pakai shimmer widget

                      return CircularProgressIndicator();
                    } else if (categoriesController.hasError.value) {
                      //  error handling

                      return ElevatedButton(
                        onPressed: () => categoriesController.getList(),
                        child: Text('Retry'),
                      );
                    } else {
                      // view

                      return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [],
                      );
                    }
                  }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
