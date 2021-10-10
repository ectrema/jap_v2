import 'package:get/get.dart';
import 'revision_controller.dart';

class RevisionBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RevisionController>(
      () => RevisionController(),
    );
  }
}
