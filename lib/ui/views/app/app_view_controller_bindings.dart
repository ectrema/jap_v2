import 'package:get/get.dart';
import 'app_view_controller.dart';

class AppViewControllerBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AppViewController>(
      () => AppViewController(),
    );
  }
}