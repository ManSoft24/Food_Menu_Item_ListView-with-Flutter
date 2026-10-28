import 'package:aplikasi_list_makanan/controllers/menu_drawer_ctr.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get.dart';

class MenuDrawerPages extends StatelessWidget {
  MenuDrawerPages({super.key});

  final controller = Get.put(MenuDrawerCtr());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Menubar')),
      body: Obx(() => controller.ListPage[controller.selectedIndex.value]),
      drawer: Drawer(
        child: Obx(
          () => ListView(
            padding: EdgeInsets.zero,
            children: [
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Home'),
                selected: controller.selectedIndex.value == 0,
                onTap: () {
                  controller.ChangePage(0);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.history),
                title: Text('History'),
                selected: controller.selectedIndex.value == 1,
                onTap: () {
                  controller.ChangePage(1);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text('Profile'),
                selected: controller.selectedIndex.value == 2,
                onTap: () {
                  controller.ChangePage(2);
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
