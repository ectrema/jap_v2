import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jap_v2/ui/core/widget/space_red_widget.dart';
import 'package:jap_v2/ui/views/lesson/kanji/transition_kanji/detail_kanji/widget/detail_kanji_item.dart';

import 'detail_kanji_view_controller.dart';

class DetailKanjiView extends GetView<DetailKanjiViewController> {
  const DetailKanjiView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          controller.title ?? '',
        ),
      ),
      body: Column(
        children: [
          const SpaceRedWidget(),
          Obx(
            () => Expanded(
              child: DetailKanjiItem(
                key: ValueKey(controller.index),
                jlpt: controller.jlpt![controller.index.value],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            height: 70,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 10, bottom: 10),
                  child: GestureDetector(
                    onTap: () {
                      if (controller.index.value > 0) {
                        controller.index.value--;
                      }
                    },
                    child: const Icon(
                      Icons.navigate_before,
                      size: 40,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(right: 10, bottom: 10),
                  child: GestureDetector(
                    onTap: () {
                      if (controller.index.value <
                          controller.jlpt!.length - 1) {
                        controller.index.value++;
                      }
                    },
                    child: const Icon(
                      Icons.navigate_next,
                      size: 40,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
