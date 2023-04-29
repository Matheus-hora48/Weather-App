import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:weather/src/pages/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      home: HomePage(),
      title: 'weather',
      debugShowCheckedModeBanner: false,
    );
  }
}
