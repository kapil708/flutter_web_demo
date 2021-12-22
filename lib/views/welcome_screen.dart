import 'package:flutter/material.dart';
import 'package:flutter_web_demo/global/packages/config_package.dart';
import 'package:flutter_web_demo/widgets/custom_button.dart';
import 'package:flutter_web_demo/widgets/custom_textformfield.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          color: appColor.bgColor,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                flex: 6,
                child: Image.asset(
                  imageAssets.logo,
                  height: 250,
                  width: 250,
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  height: double.infinity,
                  color: appColor.primaryColor,
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        "Welcome to Flutter Web",
                        style: appCss.h2.copyWith(color: Colors.white),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Email Id",
                        style: appCss.bodyStyle3.copyWith(color: Colors.white),
                      ),
                      SizedBox(height: 10),
                      CustomTextFormField(),
                      SizedBox(height: 20),
                      Text(
                        "Password",
                        style: appCss.bodyStyle3.copyWith(color: Colors.white),
                      ),
                      SizedBox(height: 10),
                      CustomTextFormField(),
                      SizedBox(height: 50),
                      CustomButton(
                        title: "Login",
                        color: Colors.white,
                        onTap: () => Get.toNamed(routeName.home),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
