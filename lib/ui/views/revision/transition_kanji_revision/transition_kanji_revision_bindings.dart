import 'package:get/get.dart';

import 'transition_kanji_revision_controller.dart';

class TransitionKanjiRevisionBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TransitionKanjiRevisionController>(
      () => TransitionKanjiRevisionController(),
    );
  }
}
