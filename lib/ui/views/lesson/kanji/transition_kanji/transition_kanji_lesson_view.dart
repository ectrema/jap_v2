import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jap_v2/entities/jlpt.dart';
import 'package:jap_v2/ui/core/widget/space_red_widget.dart';
import 'package:jap_v2/ui/navigation/routes.dart';

import 'transition_kanji_lesson_controller.dart';

class TransitionKanjiLessonView extends GetView<TransitionKanjiLessonController> {
  const TransitionKanjiLessonView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          controller.title!,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const SpaceRedWidget(),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
              child: _buildContent(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildContent() {
    return Column(
      children: List.generate(
        controller.mapJlpt!.length,
        (index) => _buildJtlpItem(controller.mapJlpt![index]!, index),
      ),
    );
  }

  Widget _buildJtlpItem(List<Jlpt> jlpt, int index) {
    return GestureDetector(
      onTap: () async {
        await Get.toNamed(
          Routes.app +
              Routes.lesson +
              Routes.kanji +
              Routes.transitionKanji +
              Routes.detailKanji,
          arguments: controller.mapJlpt![index],
        );
      },
      child: Card(
        shadowColor: Get.theme.canvasColor,
        elevation: 2,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              CircleAvatar(
                radius: 28,
                backgroundColor: Get.theme.canvasColor,
                child: Text(
                  (index + 1).toString(),
                  style: Get.theme.textTheme.bodyText2!.copyWith(
                    fontSize: 30,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Expanded(
                child: Row(
                  children: List.generate(
                    jlpt.length,
                    (index) => Expanded(
                      child: Text(
                        jlpt[index].kanji,
                        style: Get.theme.textTheme.bodyText2!.copyWith(
                          fontSize: 26,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
