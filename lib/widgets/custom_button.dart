import 'package:flutter/material.dart';
import 'package:flutter_web_demo/global/theme/index.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final double padding;
  final double radius;
  final Function? onTap;
  final TextStyle? style;
  final Color? color;
  final Color? iconColor;
  final double iconSize;
  final IconData? icon;
  final double? width;
  final Border? border;

  const CustomButton({Key? key, required this.title, this.padding = 15, this.radius = 10, this.onTap, this.style, this.color, this.icon, this.iconColor, this.iconSize = 25, this.width, this.border}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius),
      child: Container(
        color: color ?? appColor.primaryColor,
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: onTap as void Function()?,
            child: Container(
              padding: EdgeInsets.all(padding),
              width: width != null ? width : MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                border: border,
                borderRadius: BorderRadius.circular(radius),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (icon != null)
                    Row(
                      children: [
                        Icon(icon, color: iconColor, size: iconSize),
                        SizedBox(width: 10),
                      ],
                    ),
                  Text(
                    title,
                    style: style ?? appCss.h4,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
