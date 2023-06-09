import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'audio_screen.dart';

import 'categories_screen.dart';
import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(
          bodyColor: Colors.white,
          displayColor: Colors.white,
        ),
      ),
      home: const HomePage(),
      getPages: [
        GetPage(name: '/', page: () => const HomePage()),
        GetPage(name: '/audio_screen', page: () => const AudioScreen()),
        GetPage(name: '/categories_screen', page: () => const CategorieScreen()),
      ],
    );
  }
}
