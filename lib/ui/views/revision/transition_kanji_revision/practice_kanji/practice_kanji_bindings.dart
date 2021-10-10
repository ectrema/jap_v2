import 'package:get/get.dart';

import 'practice_kanji_controller.dart';

class PracticeKanjiBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PracticeKanjiController>(
      () => PracticeKanjiController(),
    );
  }
}
