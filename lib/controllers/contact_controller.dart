import 'package:flutter_web_demo/global/packages/config_package.dart';

class ContactController extends GetxController {
  @override
  void onReady() {
    // TODO: implement onReady
    print("------------- ContactController Ready -----------");
    super.onReady();
  }

  void callOnLoad() {
    print("------------- ContactController callOnLoad -----------");
  }
}
