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
      appBar: AppBar(title: Text("List Makanan"),
      backgroundColor: Color.fromARGB(255, 242, 196, 106),
      ),
      body: Container(
        margin: EdgeInsets.all(5),
        child: ListView.builder(
          itemCount: controller.ListMakanan.length,
          itemBuilder: (context, index) {
            final makanan = controller.ListMakanan[index];
            return InkWell(
              onTap: () {
                Get.toNamed(Routes.detail_makanan,
                arguments: {
                  'makanan': makanan,
                });
              },
              child: Card(
                elevation: 5,
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
            );
          },
        ),
      ),
    );
  }
}
