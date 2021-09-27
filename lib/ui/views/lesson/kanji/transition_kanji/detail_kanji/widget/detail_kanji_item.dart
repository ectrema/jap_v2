import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jap_v2/entities/jlpt.dart';

class DetailKanjiItem extends StatelessWidget {
  final Jlpt jlpt;
  const DetailKanjiItem({
    Key? key,
    required this.jlpt,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 25),
          color: Colors.black12,
          height: context.height * 0.35,
          child: _buildKanji(),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildKana("Lecture Kun", jlpt.hiragana),
            _buildKana("Lecture On", jlpt.katakana),
          ],
        ),
      ],
    );
  }

  Widget _buildKanji() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            jlpt.translate,
          ),
          Text(
            jlpt.kanji,
            textAlign: TextAlign.center,
            style: Get.theme.textTheme.headline5!.copyWith(
              fontSize: 150,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildKana(String title, List<String> kana) {
    return Container(
      padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
      child: Column(
        children: [
          Text(
            title,
            style: Get.theme.textTheme.headline6,
          ),
          Container(
            padding: const EdgeInsets.only(top: 10),
            child: Column(
              children: List.generate(
                kana.length,
                (int index) => Center(
                  child: Text(
                    kana[index],
                    style: Get.theme.textTheme.bodyText2,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
