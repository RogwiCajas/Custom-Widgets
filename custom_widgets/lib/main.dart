import 'package:custom_widgets/src/app/modules/home.dart';
import 'package:custom_widgets/src/core/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Onboarding',
      home: const HomePage(),
      getPages: Routes.routes,
      //theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: Colors.white),
    );
  }
}
