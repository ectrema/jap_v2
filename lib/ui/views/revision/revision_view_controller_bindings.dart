import 'package:get/get.dart';
import 'revision_view_controller.dart';

class RevisionViewControllerBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RevisionViewController>(
      () => RevisionViewController(),
    );
  }
}
