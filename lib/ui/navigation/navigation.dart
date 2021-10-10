import 'package:get/get.dart';
import 'export_routes.dart';

import 'routes.dart';

class Nav {
  static List<GetPage> routes = [
    GetPage(
      name: Routes.app,
      page: () => const AppView(),
      binding: AppViewControllerBindings(),
      children: [
        GetPage(
          name: Routes.home,
          page: () => const HomeView(),
          binding: HomeViewControllerBindings(),
        ),
        GetPage(
          name: Routes.lesson,
          page: () => const LessonView(),
          binding: LessonViewControllerBindings(),
          children: [
            GetPage(
              name: Routes.kana,
              page: () => const KanaView(),
              binding: KanaViewControllerBinding(),
            ),
            GetPage(
              name: Routes.kanji,
              page: () => const KanjiView(),
              binding: KanjiViewControllerBinding(),
              children: [
                GetPage(
                  name: Routes.transitionKanji,
                  page: () => const TransitionKanjiLessonView(),
                  binding: TransitionKanjiLessonViewControllerBinding(),
                  children: [
                    GetPage(
                      name: Routes.detailKanji,
                      page: () => const DetailKanjiView(),
                      binding: DetailKanjiViewControllerBinding(),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        GetPage(
          name: Routes.revision,
          page: () => const LessonView(),
          binding: LessonViewControllerBindings(),
          children: [
            GetPage(
              name: Routes.kanji,
              page: () => const KanjiView(),
              binding: KanjiViewControllerBinding(),
              children: [
                GetPage(
                  name: Routes.transitionKanji,
                  page: () => const TransitionKanjiRevisionView(),
                  binding: TransitionKanjiRevisionViewControllerBindings(),
                  children: [
                    GetPage(
                      name: Routes.practiceKanji,
                      page: () => const PracticeKanjiView(),
                      binding: PracticeKanjiBinding(),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ],
    ),
  ];
}
