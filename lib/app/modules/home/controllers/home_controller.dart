import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  var isDark = false.obs;

  final count = 0.obs;
  void changeTheme(status) {
    if (status == true) {
      isDark.value = true;
      Get.changeTheme(
        ThemeData.dark().copyWith(
            iconTheme: IconThemeData(color: Colors.blue),
            textTheme: TextTheme(
              headline5:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              headline6:
                  TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
            ),
            hintColor: Colors.grey),
      );
    } else {
      isDark.value = false;
      Get.changeTheme(ThemeData.light().copyWith(
          iconTheme: IconThemeData(color: Colors.black),
          textTheme: TextTheme(
            headline5: TextStyle(
                color: Colors.deepOrangeAccent, fontWeight: FontWeight.bold),
            headline6:
                TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
          ),
          hintColor: Colors.grey));
    }
  }

  void changeLanguage(var param1, var param2) {
    var locale = Locale(param1, param2);
    Get.updateLocale(locale);
  }

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
