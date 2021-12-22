import 'package:image_picker/image_picker.dart';

class ImagePickerService {
  final ImagePicker _picker = ImagePicker();

  Future<String?> pickImagePath(ImageSource source) async {
    XFile? image = await _picker.pickImage(source: source);
    return image?.path;
  }

  Future<List<String>?> pickMultiImagePath() async {
    List<XFile>? images = await _picker.pickMultiImage();
    if (images!.isNotEmpty) {
      return [...images.map((e) => e.path)];
    } else
      return null;
  }
}
