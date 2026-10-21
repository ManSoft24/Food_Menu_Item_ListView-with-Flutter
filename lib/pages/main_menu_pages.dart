import 'package:aplikasi_list_makanan/controllers/main_menu_controllers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainMenuPages extends StatelessWidget {
  MainMenuPages({super.key});

  final mainMenuControllers = Get.put(MainMenuControllers());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        body: IndexedStack(
          index: mainMenuControllers.selectedIndex.value,
          children: mainMenuControllers.ListPage,
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: mainMenuControllers.ChangePage,
          currentIndex: mainMenuControllers.selectedIndex.value,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home), 
              label: "Home"
              ),
            BottomNavigationBarItem(
              icon: Icon(Icons.history), 
              label: "History"
              ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person), 
              label: "Profile"
              ),
          ],
        ),
      ),
    );
  }
}
