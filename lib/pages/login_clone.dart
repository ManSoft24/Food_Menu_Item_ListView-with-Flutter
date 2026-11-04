import 'package:aplikasi_list_makanan/controllers/login_clone_ctr.dart';
import 'package:flutter/material.dart';
import 'package:aplikasi_list_makanan/components/custom_button.dart';
import 'package:aplikasi_list_makanan/components/custom_textfield.dart';
import 'package:get/get.dart';

class LoginClone extends StatelessWidget {
  LoginClone({super.key});

  final controller = Get.put(LoginCloneCtr());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 54, 57, 62),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 54, 57, 62),
        elevation: 0,
        title: const Text(
          '< Back',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),

            Center(
              child: Text(
                'Welcome back! ',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 8),
            const Center(
              child: Text(
                "We're so excited to see you again!",
                style: TextStyle(
                  color: Color.fromARGB(255, 191, 196, 203),
                  fontSize: 14,
                ),
              ),
            ),

            const SizedBox(height: 40),

            const Text(
              'ACCOUNT INFORMATION',
              style: TextStyle(
                color: Color.fromARGB(255, 163, 166, 170),
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),

            Container(
              child: CustomTextfield(
                txtController: controller.txtUsername,
                myHint: 'Username',
              ),
            ),
            const SizedBox(height: 16),

            Container(
              child: CustomTextfield(
                txtController: controller.txtPassword,
                myHint: 'Password',
              ),
            ),
            const SizedBox(height: 8),

            Text(
              'Forgot your password?',
              style: const TextStyle(
                color: Color.fromARGB(255, 0, 175, 244),
                fontSize: 12,
              ),
            ),

            const SizedBox(height: 20),

            Obx(
              () => controller.isLoading.value
                  ? Center(child: CircularProgressIndicator())
                  : CustomButton(
                      label: 'Login',
                      onPressedButton: () {
                        debugPrint("Tombol LoginFormBtn berhasil ditekan!");
                        controller.login();
                      },
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
