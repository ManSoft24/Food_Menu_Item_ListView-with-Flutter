import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:aplikasi_list_makanan/routes.dart';
import 'package:get/get_navigation/get_navigation.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My Learning App",
      initialRoute: Routes.login_clone,
      getPages: Routes.pages,
    );
  }
}
