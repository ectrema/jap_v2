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
          children: [
            GetPage(
              name: Routes.kana,
              page: () => const mobile.KanaView(),
              binding: mobile.KanaViewControllerBinding(),
            ),
            GetPage(
              name: Routes.kanji,
              page: () => const mobile.KanjiView(),
              binding: mobile.KanjiViewControllerBinding(),
              children: [
                GetPage(
                  name: Routes.transitionKanji,
                  page: () => const mobile.TransitionKanjiLessonView(),
                  binding: mobile.TransitionKanjiLessonViewControllerBinding(),
                  children: [
                    GetPage(
                      name: Routes.detailKanji,
                      page: () => const mobile.DetailKanjiView(),
                      binding: mobile.DetailKanjiViewControllerBinding(),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        GetPage(
          name: Routes.revision,
          page: () => const mobile.LessonView(),
          binding: mobile.LessonViewControllerBindings(),
          children: [
            GetPage(
              name: Routes.kanji,
              page: () => const mobile.KanjiView(),
              binding: mobile.KanjiViewControllerBinding(),
              children: [
                GetPage(
                  name: Routes.transitionKanji,
                  page: () => const mobile.TransitionKanjiRevisionView(),
                  binding:
                      mobile.TransitionKanjiRevisionViewControllerBinding(),
                ),
              ],
            )
          ],
        ),
      ],
    ),
  ];
}
