import 'package:get/get.dart';
import 'package:aplikasi_list_makanan/models/makanan_model.dart';

class DetailMakananController extends GetxController {
  late String namaMakanan;
  late String hargaMakanan;
  late String deskripsiMakanan;
  late double ratingMakanan;
  late String imageUrl;
  late int jumlahPembeli;
  @override
  void onInit() {
    super.onInit();
    final arguments = Get.arguments;
  
    namaMakanan = arguments['nama'];
    ratingMakanan = arguments['rating'];
    deskripsiMakanan = arguments['deskripsi'];
    hargaMakanan = arguments['harga'];
    imageUrl = arguments['image'];
    jumlahPembeli = arguments['jumlah'];
  }
}