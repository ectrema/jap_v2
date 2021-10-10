import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jap_v2/entities/jlpt.dart';

class PracticeKanjiController extends GetxController {
  String? title;
  List<Jlpt> selectedKanji = [];
  List<Jlpt> jlpt = [];
  RxList<String> response = <String>[].obs;
  RxList<Color> colorButton = <Color>[].obs;
  int indexPractice = 0;
  RxInt indexShow = 0.obs;
  RxBool showFinish = false.obs;

  @override
  void onInit() {
    (Get.arguments as Map<String, dynamic>).forEach((key, value) {
      if (key == 'title') {
        title = value;
      } else if (key == 'selectedKanji') {
        selectedKanji.addAll(value);
      } else if (key == 'jlpt') {
        jlpt.addAll(value);
      }
    });
    randomString();
    super.onInit();
  }

  void randomString() {
    response.clear();
    colorButton.clear();
    Random rng = Random();
    addToResponse(selectedKanji[indexShow.value]);
    colorButton.add(Get.theme.canvasColor);
    for (int i = 0; i < 3; i++) {
      colorButton.add(Get.theme.canvasColor);
      int random = rng.nextInt(jlpt
          .where((j) => j.kanji != selectedKanji[indexShow.value].kanji)
          .length);
      addToResponse(jlpt
          .where((j) => j.kanji != selectedKanji[indexShow.value].kanji)
          .toList()[random]);
    }
    for (int i = 0; i < response.length; i++) {
      int random = rng.nextInt(response.length);
      String temp = response[i];
      response[i] = response[random];
      response[random] = temp;
    }
  }

  void addToResponse(Jlpt value) {
    if (indexPractice == 0) {
      response.add(value.hiragana.toString());
    } else if (indexPractice == 1) {
      response.add(value.katakana.toString());
    } else {
      response.add(value.translate.toString());
    }
  }

  String replace(String value) => value.replaceAll('[', '').replaceAll(']', '');

  void checkAnswer(int toTest) {
    switch (indexPractice) {
      case 0:
        if (selectedKanji[indexShow.value]
            .hiragana
            .toString()
            .contains(response[toTest])) {
          indexPractice++;
          randomString();
        } else {
          colorButton[toTest] = Get.theme.canvasColor.withOpacity(0.2);
        }
        break;
      case 1:
        if (selectedKanji[indexShow.value]
            .katakana
            .toString()
            .contains(response[toTest])) {
          indexPractice++;
          randomString();
        } else {
          colorButton[toTest] = Get.theme.canvasColor.withOpacity(0.2);
        }
        break;
      default:
        if (selectedKanji[indexShow.value]
            .translate
            .toString()
            .contains(response[toTest])) {
          randomString();
          if (indexShow < selectedKanji.length - 1) {
            indexShow.value++;
          } else {
            showFinish.value = true;
          }
          indexPractice = 0;
        } else {
          colorButton[toTest] = Get.theme.canvasColor.withOpacity(0.2);
        }
        break;
    }
  }
}
