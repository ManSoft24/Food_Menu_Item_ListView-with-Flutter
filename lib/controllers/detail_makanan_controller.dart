import 'package:get/get.dart';
import 'package:aplikasi_list_makanan/models/makanan_model.dart';

class DetailMakananController extends GetxController {
  late MakananModel makanan;

  @override
  void onInit() {
    super.onInit();
    final arguments = Get.arguments;

    makanan = arguments['makanan'];
  }
}