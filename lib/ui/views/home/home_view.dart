import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../core/widget/space_red_widget.dart';
import '../../navigation/export_routes.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const SpaceRedWidget(),
          Container(
            height: context.height / 3,
            alignment: Alignment.bottomCenter,
            child: Text(
              'Bienvenue',
              style: Get.textTheme.bodyText2!.copyWith(
                    fontSize: 50,
                  ),
            ),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.topCenter,
              child: Text(
                'ようそこ',
                style: Get.textTheme.bodyText2!.copyWith(
                      fontSize: 50,
                    ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
