import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';


class SpaceRedWidget extends StatelessWidget {
  const SpaceRedWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 3,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Get.theme.backgroundColor,
            Get.theme.primaryColor,
            Get.theme.backgroundColor,
          ],
        ),
      ),
    );
  }
}
