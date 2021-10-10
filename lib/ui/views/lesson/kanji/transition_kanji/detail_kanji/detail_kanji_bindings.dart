import 'package:get/get.dart';

import 'detail_kanji_controller.dart';

class DetailKanjiBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailKanjiController>(
      () => DetailKanjiController(),
    );
  }
}
