import 'package:flutter/material.dart';
import 'package:flutter_web_demo/controllers/about_controller.dart';
import 'package:flutter_web_demo/global/packages/config_package.dart';
import 'package:flutter_web_demo/widgets/custom_button.dart';
import 'package:flutter_web_demo/widgets/custom_textformfield.dart';

class AboutScreen extends StatelessWidget {
  AboutScreen({Key? key}) : super(key: key);

  var aboutCtrl = Get.put(AboutController());

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: CustomTextFormField(
                  fillColor: Colors.white,
                  prefixIcon: Icon(Icons.search),
                ),
              ),
              SizedBox(width: 10),
              SizedBox(
                width: 80,
                child: CustomButton(
                  icon: Icons.search,
                  iconColor: Colors.white,
                  onTap: () {},
                  title: "",
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Expanded(
            child: ListView.builder(
              itemCount: 300,
              itemBuilder: (context, index) {
                return Card(
                  child: Row(
                    children: [],
                  ),
                );

                return Card(
                  child: ListTile(
                    leading: Image.asset(
                      imageAssets.logo,
                      height: 50,
                      width: 50,
                    ),
                    title: Text("Kapil R Singh"),
                    trailing: Icon(Icons.star),
                    contentPadding: EdgeInsets.all(10),
                    onTap: () {},
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
