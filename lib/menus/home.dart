import 'package:aplikasi_list_makanan/controllers/home_controllers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:aplikasi_list_makanan/routes.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final controller = Get.put(HomeControllers());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 50),
        height: 200,
        margin: EdgeInsets.all(5),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: controller.listMakanan.length,
          itemBuilder: (context, index) {
            final makanan = controller.listMakanan[index];
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
