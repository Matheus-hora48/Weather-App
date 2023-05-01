import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:weather/src/pages/home_page.dart';
import 'package:weather/src/theme/color_schemes.g.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: const HomePage(),
      title: 'weather',
      theme: ThemeData(useMaterial3: true, colorScheme: lightColorScheme),
      // darkTheme: ThemeData(useMaterial3: true, colorScheme: darkColorScheme),
      debugShowCheckedModeBanner: false,
    );
  }
}
