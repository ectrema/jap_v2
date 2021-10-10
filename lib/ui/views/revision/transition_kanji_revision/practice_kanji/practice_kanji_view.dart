import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jap_v2/ui/core/widget/space_red_widget.dart';
import 'package:jap_v2/ui/views/revision/transition_kanji_revision/practice_kanji/practice_kanji_controller.dart';

class PracticeKanjiView extends GetView<PracticeKanjiController> {
  const PracticeKanjiView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(controller.title!),
      ),
      body: Column(
        children: [
          const SpaceRedWidget(),
          Obx(
            () => controller.showFinish.value
                ? const Expanded(
                    child: Center(
                      child: Text(
                        "Révision des kanji réussis",
                      ),
                    ),
                  )
                : Expanded(
                    child: Column(
                      children: [
                        Expanded(
                          child: _buildKanji(context),
                        ),
                        Expanded(
                          child: _buildButton(),
                        ),
                      ],
                    ),
                  ),
          ),
        ],
      ),
    );
  }

  Widget _buildKanji(BuildContext context) {
    return Obx(
      () => Center(
        child: Column(
          children: [
            Expanded(
              child: Text(
                controller.selectedKanji[controller.indexShow.value].kanji,
                textAlign: TextAlign.center,
                style: Get.textTheme.bodyText2!.copyWith(
                  fontSize: context.height * 0.3,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildButton() {
    return Obx(
      () => Column(
        children: List.generate(
          controller.response.length,
          (index) => GestureDetector(
            onTap: () {
              controller.checkAnswer(index);
            },
            child: AnimatedContainer(
              margin: const EdgeInsets.fromLTRB(40, 8, 40, 8),
              duration: const Duration(milliseconds: 200),
              height: 60,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: controller.colorButton[index],
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                controller.replace(controller.response[index]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
