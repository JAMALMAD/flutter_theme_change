import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_theme_change/Home_page/Home_Page.dart';

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
      theme: ThemeData.light(),  // Default Light Mode
      darkTheme: ThemeData.dark(), // Dark Mode
      themeMode: ThemeMode.system, // ডিভাইসের থিম অনুযায়ী ডিফল্ট থিম সেট
      home: HomePage(),
    );
  }
}
