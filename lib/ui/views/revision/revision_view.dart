import 'package:get/get.dart';
import '../../core/widget/space_red_widget.dart';
import 'revision_view_controller.dart';
import 'package:flutter/material.dart';

class RevisionView extends GetView<RevisionViewController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          const SpaceRedWidget(),
          _buildAlphabet(),
          _buildMot(),
        ],
      ),
    );
  }

  Column _buildAlphabet() {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 30),
          width: 310,
          decoration: BoxDecoration(
            color: Colors.grey[600],
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: const [
              Padding(
                padding: EdgeInsets.fromLTRB(5, 5, 15, 5),
                child: Icon(
                  Icons.layers,
                  size: 30,
                ),
              ),
              Text(
                "Alphabet / アルファベット",
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 15),
          width: 310,
          child: GestureDetector(
            // onTap: () => Modular.to.pushNamed(RevisionKanaModule.route, arguments: ["hiragana"]),
            child: Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(right: 8.0),
                  child: Icon(
                    Icons.subdirectory_arrow_right,
                  ),
                ),
                Text(
                  "Les Hiraganas",
                ),
              ],
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 10),
          width: 310,
          child: Row(
            children: const [
              Padding(
                padding: EdgeInsets.only(right: 8.0),
                child: Icon(
                  Icons.subdirectory_arrow_right,
                ),
              ),
              Text(
                "Les Katakanas",
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildMot() {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 30),
          width: 310,
          decoration: BoxDecoration(
            color: Colors.grey[600],
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: const [
              Padding(
                padding: EdgeInsets.fromLTRB(5, 5, 15, 5),
                child: Icon(
                  Icons.layers,
                  size: 30,
                ),
              ),
              Text(
                "Mot / 単語",
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 15),
          width: 310,
          child: GestureDetector(
            // onTap: () => Modular.to.pushNamed(RevisionKanjiModule.route),
            child: Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(right: 8.0),
                  child: Icon(
                    Icons.subdirectory_arrow_right,
                  ),
                ),
                Text(
                  "Les Kanji",
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
