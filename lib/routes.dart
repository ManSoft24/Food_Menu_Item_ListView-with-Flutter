import 'package:aplikasi_list_makanan/pages/main_menu_pages.dart';
import 'package:aplikasi_list_makanan/pages/menu_drawer_pages.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get.dart';
import 'package:aplikasi_list_makanan/pages/list_makanan_page.dart';
import 'package:aplikasi_list_makanan/pages/detail_makanan_page.dart';

class Routes {
  static const String list_makanan = "/list_makanan";
  static const String detail_makanan = "/detail_makanan";
  static const String main_menu = "/main_menu_pages";
  static const String menu_drawer = "/menu_drawer_pages";

  static final pages = [
    GetPage(name: list_makanan, page: ()=> ListMakananPage()),
    GetPage(name: detail_makanan, page: ()=> DetailMakananPage()),
    GetPage(name: main_menu, page: ()=> MainMenuPages()),
    GetPage(name: menu_drawer, page: ()=> MenuDrawerPages()),
  ];
}
