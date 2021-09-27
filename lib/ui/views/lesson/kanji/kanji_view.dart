import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jap_v2/ui/core/widget/space_red_widget.dart';
import 'package:jap_v2/ui/views/lesson/kanji/kanji_view_controller.dart';

class KanjiView extends GetView<KanjiViewController> {
  const KanjiView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Kanji',
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SpaceRedWidget(),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Container(
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey,
                  ),
                  width: (MediaQuery.of(context).size.width) / 2,
                  child: GestureDetector(
                    // splashColor: Colors.transparent,
                    onTap: () {},
                    child: const Text(
                      '入',
                      style: TextStyle(fontSize: 120.0),
                    ),
                  ),
                ),
              ),
              // Container(
              //   width: 200,
              //   height: 200,
              //   child: Padding(
              //     padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
              //     child: FlatButton(
              //       color: Colors.grey,
              //       shape: CircleBorder(),
              //       onPressed: () {},
              //       child: Text(
              //         '元',
              //         style: TextStyle(fontSize: 100.0),
              //       ),
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
