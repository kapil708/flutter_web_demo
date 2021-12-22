import 'package:flutter/material.dart';
import 'package:flutter_web_demo/controllers/menu_controller.dart';
import 'package:flutter_web_demo/global/packages/config_package.dart';

class SideMenu extends StatelessWidget {
  SideMenu({Key? key}) : super(key: key);
  var menuCtrl = Get.find<MenuController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 240,
          height: 106,
          decoration: BoxDecoration(
            color: appColor.bgColor,
          ),
          child: Center(
            child: Image.asset(
              imageAssets.logo,
              height: 50,
              width: 50,
              fit: BoxFit.contain,
            ),
          ),
        ),
        Flexible(
          fit: FlexFit.loose,
          flex: 1,
          child: Stack(
            fit: StackFit.expand,
            children: [
              AnimatedContainer(
                duration: Duration(milliseconds: 350),
                decoration: BoxDecoration(
                  color: appColor.primaryColor,
                  borderRadius: BorderRadius.only(topRight: Radius.circular(10)),
                ),
              ),
              Column(
                children: [
                  SizedBox(width: 0, height: 24),
                  DrawerListTile(
                    title: "Dashboard",
                    iconData: Icons.stacked_bar_chart,
                    press: () => menuCtrl.updateIndex(0),
                    isSelected: menuCtrl.currentIndex == 0 ? true : false,
                  ),
                  DrawerListTile(
                    title: "About",
                    iconData: Icons.home,
                    press: () => menuCtrl.updateIndex(1),
                    isSelected: menuCtrl.currentIndex == 1 ? true : false,
                  ),
                  DrawerListTile(
                    title: "Contact",
                    iconData: Icons.update,
                    press: () => menuCtrl.updateIndex(2),
                    isSelected: menuCtrl.currentIndex == 2 ? true : false,
                  ),
                  Spacer(),
                  Text("Log Out"),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    // For selecting those three line once press "Command+D"
    required this.title,
    required this.iconData,
    required this.press,
    required this.isSelected,
  }) : super(key: key);

  final String title;
  final IconData iconData;
  final VoidCallback press;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        children: [
          Container(
            width: 5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: isSelected ? Colors.white : appColor.primaryColor,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ListTile(
                onTap: press,
                horizontalTitleGap: 0.0,
                leading: Icon(
                  iconData,
                  color: Colors.white,
                ),
                title: Text(
                  title,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
