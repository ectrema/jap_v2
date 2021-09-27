import 'package:jap_v2/ui/core/datasource_kana.dart';
import 'package:jap_v2/ui/navigation/routes.dart';

import '../../core/widget/space_red_widget.dart';
import 'lesson_view_controller.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class LessonView extends GetView<LessonViewController> {
  const LessonView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const SpaceRedWidget(),
        _buildAlphabet(),
        _buildMot(),
      ],
    );
  }

  Column _buildAlphabet() {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 30),
          width: 310,
          decoration: BoxDecoration(
            color: Colors.grey[600],
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: const [
              Padding(
                padding: EdgeInsets.fromLTRB(5, 5, 15, 5),
                child: Icon(
                  Icons.layers,
                  size: 30,
                ),
              ),
              Text(
                "Alphabet / アルファベット",
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 15),
          width: 310,
          child: GestureDetector(
            onTap: () async {
              await Get.toNamed(
                Routes.app + Routes.lesson + Routes.kana,
                arguments: {
                  'title': 'Hiragana',
                  'mapKana': DataSourceKana().initHiragana(),
                },
              );
            },
            child: Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(right: 8.0),
                  child: Icon(
                    Icons.subdirectory_arrow_right,
                  ),
                ),
                Text(
                  "Les Hiraganas",
                ),
              ],
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 10),
          width: 310,
          child: GestureDetector(
            onTap: () async {
              await Get.toNamed(
                Routes.app + Routes.lesson + Routes.kana,
                arguments: {
                  'title': 'Katakana',
                  'mapKana': DataSourceKana().initKatakana(),
                },
              );
            },
            child: Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(right: 8.0),
                  child: Icon(
                    Icons.subdirectory_arrow_right,
                  ),
                ),
                Text(
                  "Les Katakanas",
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildMot() {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 30),
          width: 310,
          decoration: BoxDecoration(
            color: Colors.grey[600],
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: const [
              Padding(
                padding: EdgeInsets.fromLTRB(5, 5, 15, 5),
                child: Icon(
                  Icons.layers,
                  size: 30,
                ),
              ),
              Text(
                "Mot / 単語",
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 15),
          width: 310,
          child: GestureDetector(
            onTap: () => Get.toNamed(Routes.app + Routes.lesson + Routes.kanji),
            child: Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(right: 8.0),
                  child: Icon(
                    Icons.subdirectory_arrow_right,
                  ),
                ),
                Text(
                  "Les Kanji",
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
