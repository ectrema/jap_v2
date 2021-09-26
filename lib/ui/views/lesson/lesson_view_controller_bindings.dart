import 'package:get/get.dart';
import 'lesson_view_controller.dart';

class LessonViewControllerBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LessonViewController>(
      () => LessonViewController(),
    );
  }
}