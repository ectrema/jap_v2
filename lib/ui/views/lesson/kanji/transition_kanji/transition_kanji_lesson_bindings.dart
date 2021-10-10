import 'package:get/get.dart';

import 'transition_kanji_lesson_controller.dart';

class TransitionKanjiLessonBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TransitionKanjiLessonController>(
      () => TransitionKanjiLessonController(),
    );
  }
}
