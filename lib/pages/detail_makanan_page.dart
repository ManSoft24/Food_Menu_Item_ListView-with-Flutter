import 'package:aplikasi_list_makanan/controllers/list_makanan_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:aplikasi_list_makanan/controllers/detail_makanan_controller.dart';
import 'package:aplikasi_list_makanan/components/button_beli.dart';
import 'package:aplikasi_list_makanan/components/card_detail.dart';

class DetailMakananPage extends StatelessWidget {
  DetailMakananPage({super.key});

  final controller = Get.put(DetailMakananController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 252, 240, 218),
      appBar: AppBar(
        title: Text("Detail Makanan"),
        backgroundColor: Color.fromARGB(255, 242, 196, 106),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        margin: EdgeInsets.all(5),

        child: CardDetail(
          harga: controller.hargaMakanan,
          nama: controller.namaMakanan,
          rating: controller.ratingMakanan,
          deskripsi: controller.deskripsiMakanan,
          jumlahPembeli: controller.jumlahPembeli,
          imageUrl: controller.imageUrl,
        ),
      ),
    );
  }
}
