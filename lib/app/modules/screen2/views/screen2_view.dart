import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/screen2_controller.dart';

class Screen2View extends GetView<Screen2Controller> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen2'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                GetPlatform.isAndroid
                    ? Get.snackbar('title', 'android')
                    : Get.snackbar('title', 'android');
              },
              child: Text('Check PlateForm'),
            ),
            Text(
              'Value of Count is ${Get.arguments}',
              style: Theme.of(context).textTheme.headline5!,
            ),
          ],
        ),
      ),
    );
  }
}
