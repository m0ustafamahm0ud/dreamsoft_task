import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_dreamsoft/ui/screens/screen1/screen_1.dart';

import 'bindings/screen1/screen1_binding.dart';
import 'utils/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: Screen1Binding(),
      theme: MyAppTheme.materialTheme,
      locale: const Locale('ar'),
      home: const Screen1(),
    );
  }
}
