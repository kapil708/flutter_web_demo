//app file
import 'package:flutter/material.dart';
import 'package:flutter_web_demo/views/home/home.dart';

class Index extends StatefulWidget {
  @override
  _IndexState createState() => _IndexState();
}

class _IndexState extends State<Index> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    //return CardLayout();
    return HomeLayout();
  }
}
