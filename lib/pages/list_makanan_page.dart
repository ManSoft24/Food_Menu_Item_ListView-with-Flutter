import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:aplikasi_list_makanan/controllers/list_makanan_controller.dart';
import 'package:aplikasi_list_makanan/routes.dart';

class ListMakananPage extends StatelessWidget {
  ListMakananPage({super.key});

  final controller = Get.put(ListMakananController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 252, 240, 218),
      appBar: AppBar(
        title: Text("List Makanan"),
        backgroundColor: Color.fromARGB(255, 242, 196, 106),
      ),
      body: Container(
        height: 200,
        margin: EdgeInsets.all(5),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: controller.ListMakanan.length,
          itemBuilder: (context, index) {
            final makanan = controller.ListMakanan[index];
            return Container(
              height: 50,
              child: InkWell(
                onTap: () {
                  Get.toNamed(
                    Routes.detail_makanan,
                    arguments: {
                      'nama': makanan.namaMakanan,
                      'harga': makanan.hargaMakanan,
                      'rating': makanan.ratingMakanan,
                      'deskripsi': makanan.deskripsiMakanan,
                      'image': makanan.imageUrl,
                      'jumlah': makanan.jumlahPembeli,
                    },
                  );
                },
                child: Card(
                  elevation: 5,
                  child: Container(
                    width: 300,
                    child: ListTile(
                      title: Text(makanan.namaMakanan),
                      subtitle: Text('Rp. ' + makanan.hargaMakanan),
                      leading: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          image: DecorationImage(
                            image: NetworkImage(makanan.imageUrl),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
