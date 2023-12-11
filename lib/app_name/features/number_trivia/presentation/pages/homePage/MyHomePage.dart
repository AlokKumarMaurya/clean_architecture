import 'package:clean_architecture/app_name/features/number_trivia/presentation/pages/homePage/homePageController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GetBuilder<HomePageController>(
      init: HomePageController(),
      builder: (controller) => controller.isLoading.value
          ? const Center(
              child: CircularProgressIndicator.adaptive(),
            )
          : const Center(
              child: Text("data"),
            ),
    ));
  }
}
