import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Screen2Controller extends GetxController {
  //TODO: Implement Screen2Controller

  final count = 0.obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
