import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jap_v2/entities/kana.dart';
import 'package:jap_v2/ui/core/widget/space_red_widget.dart';
import 'package:jap_v2/ui/views/lesson/kana/kana_controller.dart';

class KanaView extends GetView<KanaController> {
  const KanaView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          controller.title!,
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              const SpaceRedWidget(),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: _buildContent(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildContent() {
    return Column(
      children: List.generate(
        controller.mapKana.length,
        (index) => _buildKanaItem(controller.mapKana[index]!),
      ),
    );
  }

  Widget _buildKanaItem(List<Kana> value) {
    return Row(
      children: List.generate(
        value.length,
        (index) => Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Column(
              children: [
                Text(value[index].kana),
                Text(value[index].romaji),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
