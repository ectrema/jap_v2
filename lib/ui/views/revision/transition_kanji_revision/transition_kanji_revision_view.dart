import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jap_v2/ui/core/widget/space_red_widget.dart';

import 'transition_kanji_revision_view_controller.dart';

class TransitionKanjiRevisionView
    extends GetView<TransitionKanjiRevisionViewController> {
  const TransitionKanjiRevisionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          controller.title!,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SpaceRedWidget(),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 5, 0),
            child: SizedBox(
              height: context.height - 150,
              width: context.width,
              child: ListView(
                children: [
                  _buildContent(),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomSheet: GestureDetector(
        onTap: () {},
        child: Obx(
          () => controller.listJlpt.where((e) => e.isSelected).isNotEmpty
              ? Container(
                  height: 50,
                  width: context.width,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Get.theme.canvasColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    "Tester",
                    style: Get.theme.textTheme.headline5,
                  ),
                )
              : const SizedBox(),
        ),
      ),
    );
  }

  Widget _buildContent() {
    return Obx(
      () => Wrap(
        children: List.generate(
          controller.listJlpt.length,
          (index) => GestureDetector(
            onTap: () {
              controller.selectItem(index);
            },
            child: Container(
              margin: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: controller.listJlpt[index].isSelected
                    ? Get.theme.canvasColor
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(10),
              ),
              padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
              child: Text(
                controller.listJlpt[index].kanji,
                style: Get.textTheme.bodyText2!.copyWith(
                  fontSize: 25,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}