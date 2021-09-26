import 'package:get/get.dart';
import 'export_routes.dart' as mobile;

import 'routes.dart';

class Nav {
  static List<GetPage> routes = [
    GetPage(
      name: Routes.app,
      page: () => mobile.AppView(),
      binding: mobile.AppViewControllerBindings(),
    ),
    GetPage(
      name: Routes.home,
      page: () => mobile.HomeView(),
      binding: mobile.HomeViewControllerBindings(),
    ),
    GetPage(
      name: Routes.lesson,
      page: () => mobile.LessonView(),
      binding: mobile.LessonViewControllerBindings(),
    ),
    GetPage(
      name: Routes.revision,
      page: () => mobile.LessonView(),
      binding: mobile.LessonViewControllerBindings(),
    ),
  ];
}
