import 'package:aplikasi_list_makanan/models/login_model.dart';
import 'package:aplikasi_list_makanan/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import "package:http/http.dart" as http;

import 'dart:convert';

class LoginCloneCtr extends GetxController {
  TextEditingController txtUsername = TextEditingController();
  TextEditingController txtPassword = TextEditingController();

  var loginModel = Rxn<LoginModel>();

  var isLoading = false.obs;

  void login() async {
    if (txtUsername.text.toString().isEmpty ||
        txtPassword.text.toString().isEmpty) {
      Get.snackbar('Error', 'Username dan Password tidak boleh kosong');
      txtUsername.clear();
      txtPassword.clear();
    } else {
      try {
        isLoading.value = true;
        final url = Uri.parse('https://mediadwi.com/api/latihan/login');

        final response = await http.post(
          url,
          body: {
            'username': txtUsername.text.toString(),
            'password': txtPassword.text.toString(),
          },
        );
        isLoading.value = false;

        if (response.statusCode == 200) {
          final data = jsonDecode(response.body);
          loginModel.value = loginModelFromJson(response.body);
          if (loginModel.value?.status == true) {
            Get.snackbar(
              'Login Berhasil',
              'Selamat Datang ' + txtUsername.text.toString(),
            );
            Get.offNamed(Routes.main_menu);
            debugPrint("berhasil");
          } else {
            Get.snackbar('Error', 'Login Gagal Username/Password Salah');
            debugPrint("gagal");
            txtUsername.clear();
            txtPassword.clear();
          }
        } else {
          Get.snackbar('Error', 'Terjadi kesalahan');
          debugPrint("response status code: ${response.statusCode}");
          txtUsername.clear();
          txtPassword.clear();
        }
      } catch (e) {
        debugPrint("error: $e");
      }
    }
  }
}
