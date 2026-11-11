import 'package:aplikasi_list_makanan/controllers/home_controllers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:aplikasi_list_makanan/routes.dart';
import 'package:intl/intl.dart';

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
          itemCount: controller.makananList.length,
          itemBuilder: (context, index) {
            final makanan = controller.makananList[index];
            double price = makanan.price * 16000;
            var formatter = NumberFormat('#,##0.00', 'id_ID');
            String formatted = formatter.format(price);

            return Container(
              height: 50,
              child: InkWell(
                onTap: () {
                  Get.toNamed(
                    Routes.detail_makanan,
                    arguments: {
                      'nama': makanan.name,
                      'harga': formatted,
                      'deskripsi': makanan.description,
                      'image': makanan.imageUrl,
                      'rating' : makanan.rating,
                    },
                  );
                },
                child: Card(
                  elevation: 5,
                  child: Container(
                    width: 300,
                    child: ListTile(
                      title: Text(makanan.name),
                      subtitle: Text('Rp. ' + formatted),
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
