import 'package:get/get.dart';

import 'transition_kanji_lesson_view_controller.dart';

class TransitionKanjiLessonViewControllerBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TransitionKanjiLessonViewController>(
      () => TransitionKanjiLessonViewController(),
    );
  }
}
