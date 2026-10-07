import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get.dart';
import 'package:aplikasi_list_makanan/pages/list_makanan_page.dart';
import 'package:aplikasi_list_makanan/pages/detail_makanan_page.dart';

class Routes {
  static const String list_makanan = "/list_makanan";
  static const String detail_makanan = "/detail_makanan";

  static final pages = [
    GetPage(name: list_makanan, page: ()=> ListMakananPage()),
    GetPage(name: detail_makanan, page: ()=> DetailMakananPage())
  ];
}
