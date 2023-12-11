import 'dart:math';

import 'package:get/get.dart';

import '../../../domain/usecase/get_concrete_number_trivia.dart';

class HomePageController extends GetxController {
  final GetConcreteNumberTriviaUsecase _getConcreteNumberTrivia = Get.find();
  RxBool isLoading = RxBool(false);

  @override
  void onInit() {
    //perform the initial action on controller initialized
    initData();

    super.onInit();
  }

  void initData() {
    getConcreteNumberTrivia();
  }

  void getConcreteNumberTrivia() async {
    await _getConcreteNumberTrivia.execute(number: Random().nextInt(100));
  }
}
