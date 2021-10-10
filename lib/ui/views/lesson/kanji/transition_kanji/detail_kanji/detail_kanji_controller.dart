import 'package:get/get.dart';
import 'package:jap_v2/entities/jlpt.dart';

class DetailKanjiController extends GetxController {
  String? title;
  RxInt index = 0.obs;
  List<Jlpt>? jlpt;

  @override
  void onInit() {
    jlpt = Get.arguments as List<Jlpt>;
    super.onInit();
  }
}
