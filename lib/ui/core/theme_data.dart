import 'package:flutter/material.dart';

import 'datasource_constant.dart';

class XThemeData {
  static ThemeData light() {
    return ThemeData(
      primaryColor: Colors.orange,
      accentColor: Colors.blue,
      backgroundColor: Colors.green,
      canvasColor: Colors.purple,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: Colors.purpleAccent,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.pink,
      ),
      scaffoldBackgroundColor: Colors.tealAccent,
      appBarTheme: AppBarTheme(
        color: Colors.black,
        iconTheme: IconThemeData(color: Colors.red),
        textTheme: TextTheme(
          headline6: kHeadLine.copyWith(color: Colors.blue),
        ),
      ),
      iconTheme: IconThemeData(
        color: Colors.red[200],
      ),
      textTheme: TextTheme(
        bodyText2: kBodyText.copyWith(
          color: Colors.lightGreen,
        ),
        subtitle2: kHeadLine.copyWith(
          color: Colors.lightGreen,
          fontSize: 25,
        ),
        headline6: kHeadLine.copyWith(
          color: Colors.lime,
        ),
      ),
    );
  }

  static ThemeData dark() {
    return ThemeData(
      brightness: Brightness.dark,
      primaryColorBrightness: Brightness.dark,
      primaryColor: kSecondRedColorDark,
      backgroundColor: kBackgroundColorDark,
      canvasColor: kThirdColorDark,
      focusColor: Colors.grey[600],
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: kBackgroundColorDark,
        selectedItemColor: kSecondRedColorDark,
        unselectedItemColor: kSecondWhiteColorDark,
      ),
      scaffoldBackgroundColor: kBackgroundColorDark,
      textSelectionTheme: TextSelectionThemeData(
        cursorColor: kSecondRedColorDark,
        selectionColor: Colors.black12,
        selectionHandleColor: kSecondRedColorDark,
      ),
      appBarTheme: AppBarTheme(
        color: kBackgroundColorDark,
        iconTheme: IconThemeData(
          color: kThirdColorDark,
        ),
        titleTextStyle: kHeadLine.copyWith(color: kSecondRedColorDark),
      ),
      iconTheme: IconThemeData(
        color: kThirdColorDark,
        size: 25,
      ),
      textTheme: TextTheme(
        bodyText2: kBodyText.copyWith(
          color: kSecondWhiteColorDark,
        ),
        subtitle2: kHeadLine.copyWith(
          color: kSecondRedColorDark,
        ),
        headline6: kHeadLine.copyWith(
          color: kSecondRedColorDark,
        ),
        headline5: kHeadLine.copyWith(
          color: kSecondWhiteColorDark,
        ),
      ),
      cardColor: kBackgroundColorDark,
      inputDecorationTheme: InputDecorationTheme(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: kSecondRedColorDark),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: kSecondRedColorDark),
        ),
      ),
    );
  }
}
