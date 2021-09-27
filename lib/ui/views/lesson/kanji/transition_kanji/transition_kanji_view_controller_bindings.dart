import 'package:get/get.dart';

import 'transition_kanji_view_controller.dart';

class TranstionKanjiViewControllerBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TranstionKanjiViewController>(
      () => TranstionKanjiViewController(),
    );
  }
}
