import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_web_demo/controllers/menu_controller.dart';
import 'package:flutter_web_demo/global/packages/config_package.dart';
import 'package:flutter_web_demo/responsive.dart';

class Header extends StatelessWidget {
  var menuCtrl = Get.find<MenuController>();

  Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("Font Size : ${12.sp}, Screen Size : ${1.sw} , logicalWidth : ${Responsive.logicalWidth}");
    return Container(
      height: 106,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (!Responsive.isDesktop(context))
            IconButton(
              icon: Icon(Icons.menu),
              onPressed: () => menuCtrl.controlMenu(),
              //onPressed: context.read<MenuController>().controlMenu,
            ),
          if (!Responsive.isMobile(context))
            Text(
              "Dashboard",
              //style: Theme.of(context).textTheme.headline6,
              style: TextStyle(
                fontSize: 20.sp,
              ),
            ),
          Spacer(flex: Responsive.isDesktop(context) ? 2 : 1),
          //Expanded(child: SearchField()),
          ProfileCard(),
        ],
      ),
    );
  }
}

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 16),
      padding: EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 16 / 2,
      ),
      decoration: BoxDecoration(
        color: appColor.secondaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        border: Border.all(color: Colors.white10),
      ),
      child: Row(
        children: [
          Image.asset(
            imageAssets.logo,
            height: 38,
          ),
          //if (!Responsive.isMobile(context))
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16 / 2),
            child: Text(
              "Angelina Jolie",
              style: appCss.h4.copyWith(color: Colors.white),
            ),
          ),
          Icon(Icons.keyboard_arrow_down, color: Colors.white),
        ],
      ),
    );
  }
}

class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: "Search",
        fillColor: appColor.secondaryColor,
        filled: true,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
        suffixIcon: InkWell(
          onTap: () {},
          child: Container(
            padding: EdgeInsets.all(16 * 0.75),
            margin: EdgeInsets.symmetric(horizontal: 16 / 2),
            decoration: BoxDecoration(
              color: appColor.primaryColor,
              borderRadius: const BorderRadius.all(Radius.circular(10)),
            ),
            child: Icon(Icons.search),
          ),
        ),
      ),
    );
  }
}
