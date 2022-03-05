import 'package:get/get.dart';

import 'package:getxpresention/app/modules/home/bindings/home_binding.dart';
import 'package:getxpresention/app/modules/home/views/home_view.dart';
import 'package:getxpresention/app/modules/screen2/bindings/screen2_binding.dart';
import 'package:getxpresention/app/modules/screen2/views/screen2_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SCREEN2,
      page: () => Screen2View(),
      binding: Screen2Binding(),
    ),
  ];
}
