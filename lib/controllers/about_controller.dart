import 'package:flutter_web_demo/services/image_picker_service.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class AboutController extends GetxController {
  String? imagePath;

  @override
  void onReady() {
    // TODO: implement onReady
    print("------------- AboutController Ready -----------");
    super.onReady();
  }

  void pickImage() async {
    imagePath = await ImagePickerService().pickImagePath(ImageSource.gallery);
    update();
  }
}
