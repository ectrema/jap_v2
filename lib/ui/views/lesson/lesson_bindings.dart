import 'package:get/get.dart';
import 'lesson_controller.dart';

class LessonBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LessonViewController>(
      () => LessonViewController(),
    );
  }
}