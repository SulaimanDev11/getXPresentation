import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/modules/utils/message.dart';
import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
        title: "Application",
        initialRoute: AppPages.INITIAL,
        getPages: AppPages.routes,
        translations: Messages(),
        locale: Locale('un', 'US'),
        fallbackLocale: Locale('un', 'US'),
        theme: ThemeData.light().copyWith(
            iconTheme: IconThemeData(color: Colors.black),
            textTheme: TextTheme(
              headline5: TextStyle(
                  color: Colors.deepOrangeAccent, fontWeight: FontWeight.bold),
              headline6:
                  TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
            ),
            hintColor: Colors.grey)),
  );
}
