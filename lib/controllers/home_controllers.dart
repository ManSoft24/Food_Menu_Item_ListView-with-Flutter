import "package:get/get.dart";
import "package:aplikasi_list_makanan/models/makanans_model.dart";
import 'package:flutter/material.dart';
import "package:http/http.dart" as http;

class HomeControllers extends GetxController {
  final RxList<Datum> makananList = <Datum>[].obs;

  var isLoading = false.obs;

  @override
  void onInit() {
    super.onInit();
    makanan();
  }

  void makanan() async {
    try {
      isLoading.value = true;

      final url = Uri.parse(
        'https://randomapi.dev/api/products?category=food&maxPrice=100&count=5',
      );

      final response = await http.get(url);

      if (response.statusCode == 200) {
        final data = makanansModelFromJson(response.body);
        makananList.assignAll(data.data);
      } else {
        debugPrint('Failed with status code: ${response.statusCode}');
      }
    } catch (e) {
      debugPrint('Error fetching data: $e');
    } finally {
      isLoading.value = false;
    }
  }
}
