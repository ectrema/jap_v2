import 'package:get/get.dart';

import 'kana_view_controller.dart';

class KanaViewControllerBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<KanaViewController>(
      () => KanaViewController(),
    );
  }
}
