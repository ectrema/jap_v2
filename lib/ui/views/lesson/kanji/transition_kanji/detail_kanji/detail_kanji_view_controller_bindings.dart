import 'package:get/get.dart';

import 'detail_kanji_view_controller.dart';

class DetailKanjiViewControllerBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailKanjiViewController>(
      () => DetailKanjiViewController(),
    );
  }
}
