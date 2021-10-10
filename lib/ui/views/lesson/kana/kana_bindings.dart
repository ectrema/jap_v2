import 'package:get/get.dart';

import 'kana_controller.dart';

class KanaBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<KanaController>(
      () => KanaController(),
    );
  }
}
