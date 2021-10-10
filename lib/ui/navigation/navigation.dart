import 'package:get/get.dart';
import 'export_routes.dart';

import 'routes.dart';

class Nav {
  static List<GetPage> routes = [
    GetPage(
      name: Routes.app,
      page: () => const AppView(),
      binding: AppBindings(),
      children: [
        GetPage(
          name: Routes.home,
          page: () => const HomeView(),
          binding: HomeBindings(),
        ),
        GetPage(
          name: Routes.lesson,
          page: () => const LessonView(),
          binding: LessonBindings(),
          children: [
            GetPage(
              name: Routes.kana,
              page: () => const KanaView(),
              binding: KanaBindings(),
            ),
            GetPage(
              name: Routes.kanji,
              page: () => const KanjiView(),
              binding: KanjiBindings(),
              children: [
                GetPage(
                  name: Routes.transitionKanji,
                  page: () => const TransitionKanjiLessonView(),
                  binding: TransitionKanjiLessonBindings(),
                  children: [
                    GetPage(
                      name: Routes.detailKanji,
                      page: () => const DetailKanjiView(),
                      binding: DetailKanjiBindings(),
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
          binding: LessonBindings(),
          children: [
            GetPage(
              name: Routes.kanji,
              page: () => const KanjiView(),
              binding: KanjiBindings(),
              children: [
                GetPage(
                  name: Routes.transitionKanji,
                  page: () => const TransitionKanjiRevisionView(),
                  binding: TransitionKanjiRevisionBindings(),
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
