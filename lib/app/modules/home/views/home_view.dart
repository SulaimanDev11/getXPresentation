import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getxpresention/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  var items = ['English', 'Hindi', 'French'];
  var dropDownValue = 'English'.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('localization'),
        centerTitle: true,
        actions: [
          Obx(
            () => Switch(
              value: controller.isDark.value,
              onChanged: (status) {
                controller.changeTheme(status);
              },
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Material(
                color: Colors.white,
                child: InkWell(
                    onTap: () {
                      controller.increment();
                    },
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Obx(
                        () => Text(
                          '${controller.count.value}',
                          style: Theme.of(context)
                              .textTheme
                              .headline5!
                              .copyWith(fontSize: 20),
                        ),
                      ),
                    )),
              ),
            ),
            SizedBox(height: Get.height * 0.2),
            Text(
              'hello'.tr,
              style:
                  Theme.of(context).textTheme.headline5!.copyWith(fontSize: 15),
            ),
            DropdownButton(
              style:
                  Theme.of(context).textTheme.headline5!.copyWith(fontSize: 17),
              value: dropDownValue.value,
              icon: Icon(Icons.keyboard_arrow_down),
              items: items.map((String items) {
                return DropdownMenuItem(value: items, child: Text(items));
              }).toList(),
              onChanged: (String? newValue) {
                dropDownValue.value = newValue!;
                switch (newValue) {
                  case 'English':
                    {
                      Get.snackbar('Saved', 'Language is Set to english');
                      controller.changeLanguage('en', 'EN');
                      break;
                    }
                  case 'Hindi':
                    {
                      Get.snackbar('Saved', 'Language is Set to hindi');
                      controller.changeLanguage('hi', 'HI');
                      break;
                    }
                  case 'French':
                    {
                      Get.snackbar('Saved', 'Language is Set to french');
                      controller.changeLanguage('fr', 'FR');
                      break;
                    }
                }
              },
            ),
            SizedBox(height: Get.height * 0.01),
            Container(
              height: Get.height * 0.1,
              width: Get.width - 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Material(
                  color: Get.isDarkMode ? Colors.grey : Colors.white,
                  child: InkWell(
                    onTap: () {
                      Get.defaultDialog(
                        title: 'Attension',
                        textConfirm: 'Go to Next',
                        cancelTextColor: Colors.red,
                        confirmTextColor: Colors.white,
                        titlePadding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                        content: Text('Exit this screen'),
                        onCancel: () {
                          Get.back();
                        },
                        onConfirm: () {
                          Get.toNamed(Routes.SCREEN2,
                              arguments: controller.count);
                        },
                      );
                    },
                    child: Center(
                      child: Text('Go To Next',
                          style: Theme.of(context).textTheme.headline5!),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
