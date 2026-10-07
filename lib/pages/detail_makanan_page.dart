import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:aplikasi_list_makanan/controllers/detail_makanan_controller.dart';

class DetailMakananPage extends StatelessWidget {
  DetailMakananPage({super.key});

  final controller = Get.arguments['makanan'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 252, 240, 218),
      appBar: AppBar(
        title: Text("Detail Makanan"),
        backgroundColor: Color.fromARGB(255, 242, 196, 106),
      ),
      body: Container(
        margin: EdgeInsets.all(5),

        child: Card(
          elevation: 5,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.0),
                  image: DecorationImage(
                    image: NetworkImage(controller.imageUrl),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      controller.namaMakanan,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Rp. ' + controller.hargaMakanan,
                      style: TextStyle(fontSize: 18, color: Colors.green),
                    ),
                    SizedBox(height: 10),
                    Text(
                      controller.deskripsiMakanan,
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.yellow),
                        SizedBox(width: 5),
                        Text(
                          controller.ratingMakanan.toString(),
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
