import 'package:get/get.dart';
import 'package:jap_v2/entities/jlpt.dart';
import 'package:jap_v2/ui/core/datasource_jlpt_n5.dart';

class TransitionKanjiRevisionController extends GetxController {
  String? title;
  RxList<Jlpt> listJlpt = <Jlpt>[].obs;
  @override
  void onInit() {
    switch (Get.arguments) {
      case 'N5':
        title = 'JLPT N5';
        listJlpt.addAll(KanjiN5.jlptN5Revision);
        break;
      default:
    }
    super.onInit();
  }

  void selectItem(int index) {
    if (listJlpt[index].isSelected) {
      listJlpt[index] = listJlpt[index].copyWith(isSelected: false);
    } else {
      listJlpt[index] = listJlpt[index].copyWith(isSelected: true);
    }
  }
}
