import 'package:flutter/material.dart';
import 'package:flutter_web_demo/controllers/contact_controller.dart';
import 'package:flutter_web_demo/global/packages/config_package.dart';
import 'package:get/get.dart';

class ContactScreen extends StatelessWidget {
  ContactScreen({Key? key}) : super(key: key);

  var contactCtrl = Get.put(ContactController());

  @override
  Widget build(BuildContext context) {
    contactCtrl.callOnLoad();

    return Container(
      child: Text(
        "Contact Us",
        style: appCss.bodyStyle1,
      ),
    );
  }
}
