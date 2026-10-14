import 'package:flutter/material.dart';

import 'button_beli.dart';

import 'package:get/get.dart';

class CardDetail extends StatelessWidget {
  final String harga;
  final String nama;
  final String deskripsi;
  final double rating;
  final int jumlahPembeli;
  final String imageUrl;

  const CardDetail({
    super.key,
    required this.harga,
    required this.nama,
    required this.rating,
    required this.deskripsi,
    required this.jumlahPembeli,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
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
                image: NetworkImage(imageUrl),
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
                  nama,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Text(
                      'Rp. ',
                      style: TextStyle(fontSize: 18, color: Colors.green),
                    ),
                    Text(
                      harga,
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Text(deskripsi, style: TextStyle(fontSize: 16)),
                SizedBox(height: 10),
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.yellow),
                    SizedBox(width: 5),
                    Text(rating.toString(), style: TextStyle(fontSize: 16)),
                    Text(
                      ' / 5',
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                    Text(
                      ' (${jumlahPembeli} pembeli)',
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                  ],
                ),

                Container(
                  margin: EdgeInsets.only(top: 20),
                  width: double.infinity,
                  alignment: Alignment.bottomCenter,
                  child: ButtonBeli(
                    label: "Beli",
                    onPressedButton: () {
                      Get.snackbar("Selamat", nama + " Berhasil Di Beli!");
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
