import 'package:get/get.dart';
import 'export_routes.dart' as mobile;

import 'routes.dart';

class Nav {
  static List<GetPage> routes = [
    GetPage(
      name: Routes.app,
      page: () => const mobile.AppView(),
      binding: mobile.AppViewControllerBindings(),
      children: [
        GetPage(
          name: Routes.home,
          page: () => const mobile.HomeView(),
          binding: mobile.HomeViewControllerBindings(),
        ),
        GetPage(
          name: Routes.lesson,
          page: () => const mobile.LessonView(),
          binding: mobile.LessonViewControllerBindings(),
        ),
        GetPage(
          name: Routes.revision,
          page: () => const mobile.LessonView(),
          binding: mobile.LessonViewControllerBindings(),
        ),
      ],
    ),
  ];
}
