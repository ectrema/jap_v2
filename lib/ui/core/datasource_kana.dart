
import '../../entities/kana.dart';

class DataSourceKana {
  Map<int, List<Kana>> initHiragana() {
    Map<int, List<Kana>> mapHiragana = {};
    mapHiragana[0] = [
      Kana(kana: "あ", romaji: "a"),
      Kana(kana: "い", romaji: "i"),
      Kana(kana: "う", romaji: "u"),
      Kana(kana: "え", romaji: "e"),
      Kana(kana: "お", romaji: "o"),
    ];
    mapHiragana[1] = [
      Kana(kana: "か", romaji: "ka"),
      Kana(kana: "き", romaji: "ki"),
      Kana(kana: "く", romaji: "ku"),
      Kana(kana: "け", romaji: "ke"),
      Kana(kana: "こ", romaji: "ko")
    ];
    mapHiragana[2] = [
      Kana(kana: "さ", romaji: "sa"),
      Kana(kana: "し", romaji: "shi"),
      Kana(kana: "す", romaji: "su"),
      Kana(kana: "せ", romaji: "se"),
      Kana(kana: "そ", romaji: "so")
    ];
    mapHiragana[3] = [
      Kana(kana: "た", romaji: "ta"),
      Kana(kana: "ち", romaji: "chi"),
      Kana(kana: "つ", romaji: "tsu"),
      Kana(kana: "て", romaji: "te"),
      Kana(kana: "と", romaji: "to"),
    ];
    mapHiragana[4] = [
      Kana(kana: "な", romaji: "na"),
      Kana(kana: "に", romaji: "ni"),
      Kana(kana: "ぬ", romaji: "nu"),
      Kana(kana: "ね", romaji: "ne"),
      Kana(kana: "の", romaji: "no"),
    ];
    mapHiragana[5] = [
      Kana(kana: "は", romaji: "ha"),
      Kana(kana: "ひ", romaji: "hi"),
      Kana(kana: "ふ", romaji: "fu"),
      Kana(kana: "へ", romaji: "he"),
      Kana(kana: "ほ", romaji: "ho"),
    ];
    mapHiragana[6] = [
      Kana(kana: "ま", romaji: "ma"),
      Kana(kana: "み", romaji: "mi"),
      Kana(kana: "む", romaji: "mu"),
      Kana(kana: "め", romaji: "me"),
      Kana(kana: "も", romaji: "mo"),
    ];
    mapHiragana[7] = [
      Kana(kana: "や", romaji: "ya"),
      Kana(kana: "", romaji: ""),
      Kana(kana: "ゆ", romaji: "yu"),
      Kana(kana: "", romaji: ""),
      Kana(kana: "よ", romaji: "yo"),
    ];
    mapHiragana[8] = [
      Kana(kana: "ら", romaji: "ra"),
      Kana(kana: "り", romaji: "ri"),
      Kana(kana: "る", romaji: "ru"),
      Kana(kana: "れ", romaji: "re"),
      Kana(kana: "ろ", romaji: "ro"),
    ];
    mapHiragana[9] = [
      Kana(kana: "わ", romaji: "wa"),
      Kana(kana: "", romaji: ""),
      Kana(kana: "", romaji: ""),
      Kana(kana: "", romaji: ""),
      Kana(kana: "を", romaji: "wo"),
    ];
    return mapHiragana;
  }

  Map<int, List<Kana>> initKatakana() {
    Map<int, List<Kana>> mapKatakana = {};
    mapKatakana[0] = [
      Kana(kana: "ア", romaji: "a"),
      Kana(kana: "イ", romaji: "i"),
      Kana(kana: "ウ", romaji: "u"),
      Kana(kana: "エ", romaji: "e"),
      Kana(kana: "オ", romaji: "o"),
    ];
    mapKatakana[1] = [
      Kana(kana: "カ", romaji: "ka"),
      Kana(kana: "キ", romaji: "ki"),
      Kana(kana: "ク", romaji: "ku"),
      Kana(kana: "ケ", romaji: "ke"),
      Kana(kana: "コ", romaji: "ko")
    ];
    mapKatakana[2] = [
      Kana(kana: "サ", romaji: "sa"),
      Kana(kana: "シ", romaji: "shi"),
      Kana(kana: "ス", romaji: "su"),
      Kana(kana: "セ", romaji: "se"),
      Kana(kana: "ソ", romaji: "so")
    ];
    mapKatakana[3] = [
      Kana(kana: "タ", romaji: "ta"),
      Kana(kana: "チ", romaji: "chi"),
      Kana(kana: "ツ", romaji: "tsu"),
      Kana(kana: "テ", romaji: "te"),
      Kana(kana: "ト", romaji: "to"),
    ];
    mapKatakana[4] = [
      Kana(kana: "ナ", romaji: "na"),
      Kana(kana: "ニ", romaji: "ni"),
      Kana(kana: "ヌ", romaji: "nu"),
      Kana(kana: "ネ", romaji: "ne"),
      Kana(kana: "ノ", romaji: "no"),
    ];
    mapKatakana[5] = [
      Kana(kana: "ハ", romaji: "ha"),
      Kana(kana: "ヒ", romaji: "hi"),
      Kana(kana: "フ", romaji: "fu"),
      Kana(kana: "ヘ", romaji: "he"),
      Kana(kana: "ホ", romaji: "ho"),
    ];
    mapKatakana[6] = [
      Kana(kana: "マ", romaji: "ma"),
      Kana(kana: "ミ", romaji: "mi"),
      Kana(kana: "ム", romaji: "mu"),
      Kana(kana: "メ", romaji: "me"),
      Kana(kana: "モ", romaji: "mo"),
    ];
    mapKatakana[7] = [
      Kana(kana: "ヤ", romaji: "ya"),
      Kana(kana: "", romaji: ""),
      Kana(kana: "ユ", romaji: "yu"),
      Kana(kana: "", romaji: ""),
      Kana(kana: "ヨ", romaji: "yo"),
    ];
    mapKatakana[8] = [
      Kana(kana: "ラ", romaji: "ra"),
      Kana(kana: "リ", romaji: "ri"),
      Kana(kana: "ル", romaji: "ru"),
      Kana(kana: "レ", romaji: "re"),
      Kana(kana: "ロ", romaji: "ro"),
    ];
    mapKatakana[9] = [
      Kana(kana: "ワ", romaji: "wa"),
      Kana(kana: "", romaji: ""),
      Kana(kana: "", romaji: ""),
      Kana(kana: "", romaji: ""),
      Kana(kana: "ヲ", romaji: "wo"),
    ];
    return mapKatakana;
  }
}
