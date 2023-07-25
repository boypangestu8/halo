import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:halo/categories/categories_controller.dart';
import 'package:halo/custom_widget.dart';

class CategoriesScreen extends StatelessWidget {
  final categoriesController = Get.put(CategoriesController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(14),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Categories",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Expanded(
                child: Center(
                  child: Obx(() {
                    if (categoriesController.isLoading.value) {
                      // bisa pakai circular progress
                      // bisa pakai shimmer widget

                      // return const CircularProgressIndicator();
                      return buildShimmerFromLottie();
                    } else if (categoriesController.hasError.value) {
                      //  error handling

                      return ElevatedButton(
                        onPressed: () => categoriesController.getList(),
                        child: const Text('Retry'),
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
