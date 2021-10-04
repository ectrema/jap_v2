import 'package:get/get.dart';

class KanjiViewController extends GetxController {
  bool? fromRevision;
  @override
  void onInit() {
    fromRevision = Get.arguments ?? false;
    super.onInit();
  }
}
