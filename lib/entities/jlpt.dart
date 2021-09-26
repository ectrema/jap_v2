class Jlpt {
  final String kanji;
  final List<String> hiragana;
  final List<String> katakana;
  final String translate;
  final bool isSelected;

  const Jlpt({
    required this.kanji,
    required this.hiragana,
    required this.katakana,
    required this.translate,
    this.isSelected = false,
  });

  Jlpt copyWith({
    String? kanji,
    List<String>? hiragana,
    List<String>? katakana,
    String? translate,
    bool? isSelected,
  }) {
    return Jlpt(
      kanji: kanji ?? this.kanji,
      hiragana: hiragana ?? this.hiragana,
      katakana: katakana ?? this.katakana,
      translate: translate ?? this.translate,
      isSelected: isSelected ?? this.isSelected,
    );
  }
}
