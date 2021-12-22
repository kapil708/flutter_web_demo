import 'package:flutter_web_demo/global/packages/screen_package.dart';
import 'package:get/get.dart';

//app file
import 'route_name.dart';

RouteName _routeName = RouteName();

class AppRoute {
  final List<GetPage> getPages = [
    GetPage(name: _routeName.home, page: () => Index()),
    GetPage(name: _routeName.noInternet, page: () => Index()),
  ];
}
