import 'package:get/get.dart';
import 'package:jap_v2/entities/kana.dart';

class KanaController extends GetxController {
  String? title;
  Map<int, List<Kana>> mapKana = <int, List<Kana>>{};

  @override
  void onInit() {
    (Get.arguments as Map<String, dynamic>).forEach((key, value) {
      if (key == 'title') {
        title = value;
      } else if (key == 'mapKana') {
        mapKana = value;
      }
    });
    super.onInit();
  }
}
