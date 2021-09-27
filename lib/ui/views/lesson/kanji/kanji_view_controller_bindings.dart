import 'package:get/get.dart';

import 'kanji_view_controller.dart';

class KanjiViewControllerBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<KanjiViewController>(
      () => KanjiViewController(),
    );
  }
}
