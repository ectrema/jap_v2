import 'package:get/get.dart';
import 'package:jap_v2/entities/jlpt.dart';
import 'package:jap_v2/ui/core/datasource_jlpt_n5.dart';

class TranstionKanjiViewController extends GetxController {
  String? title;
  Map<int, List<Jlpt>>? mapJlpt;

  @override
  void onInit() {
    switch ((Get.arguments as String)) {
      case 'N5':
        title = 'JLPT N5';
        mapJlpt = KanjiN5.init();
        break;
      default:
    }
    super.onInit();
  }
}
