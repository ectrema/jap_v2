import 'package:get/get.dart';

import 'transition_kanji_revision_view_controller.dart';

class TransitionKanjiRevisionViewControllerBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TransitionKanjiRevisionViewController>(
      () => TransitionKanjiRevisionViewController(),
    );
  }
}
