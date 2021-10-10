import 'package:get/get.dart';

import 'kanji_controller.dart';

class KanjiBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<KanjiController>(
      () => KanjiController(),
    );
  }
}
