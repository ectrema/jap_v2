import 'package:get/get.dart';

import 'home_view_controller.dart';

class HomeViewControllerBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeViewController>(
      () => HomeViewController(),
    );
  }
}
