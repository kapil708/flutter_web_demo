import 'package:flutter/material.dart';
import 'package:flutter_web_demo/controllers/menu_controller.dart';
import 'package:flutter_web_demo/responsive.dart';
import 'package:flutter_web_demo/views/home/header.dart';
import 'package:flutter_web_demo/views/home/side_menu.dart';
import 'package:get/get.dart';

class HomeLayout extends StatelessWidget {
  var menuCtrl = Get.put(MenuController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MenuController>(
      builder: (_) {
        return LayoutBuilder(
          builder: (context, constraints) => Scaffold(
            key: menuCtrl.scaffoldKey,
            drawer: Drawer(child: SideMenu()),
            body: SafeArea(
              child: Row(
                children: [
                  if (Responsive.isDesktop(context))
                    Expanded(
                      flex: 2,
                      child: SideMenu(),
                    ),
                  Expanded(
                    flex: 6,
                    child: Container(
                      height: double.infinity,
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Header(),
                          menuCtrl.widgetOptions.elementAt(menuCtrl.currentIndex),
                          //contentStack,
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
