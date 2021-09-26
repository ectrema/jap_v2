import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'ui/core/theme_data.dart';
import 'ui/navigation/navigation.dart';
import 'ui/navigation/routes.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: 'Japanese App',
      themeMode: ThemeMode.dark,
      theme: XThemeData.light(),
      darkTheme: XThemeData.dark(),
      getPages: Nav.routes,
      initialRoute: Routes.initialRoute,
    ),
  );
}
