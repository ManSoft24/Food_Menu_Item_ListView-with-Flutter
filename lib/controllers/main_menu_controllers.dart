
import 'package:aplikasi_list_makanan/menus/history.dart';
import 'package:aplikasi_list_makanan/menus/home.dart';
import 'package:aplikasi_list_makanan/menus/profile.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

class MainMenuControllers extends GetxController {
  final RxInt selectedIndex = 0.obs;

  void ChangePage(int index) {
    selectedIndex.value = index;
  }

  List<Widget> ListPage = [HomePage(), ProfilePage(), HistoryPage()];
}
