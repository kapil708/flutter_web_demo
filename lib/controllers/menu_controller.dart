import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_demo/views/about_screen.dart';
import 'package:flutter_web_demo/views/contact_screen.dart';
import 'package:flutter_web_demo/views/dashboard.dart';
import 'package:get/get.dart';

class MenuController extends GetxController {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  GlobalKey<ScaffoldState> get scaffoldKey => _scaffoldKey;
  int _currentIndex = 0;
  int get currentIndex => _currentIndex;

  List<Widget> widgetOptions = <Widget>[
    Dashboard(),
    AboutScreen(),
    ContactScreen(),
  ];

  void controlMenu() {
    if (!_scaffoldKey.currentState!.isDrawerOpen) {
      _scaffoldKey.currentState!.openDrawer();
    }
  }

  void updateIndex(int index) {
    _currentIndex = index;
    update();
    if (_scaffoldKey.currentState!.isDrawerOpen) {
      Get.back();
    }
  }
}
