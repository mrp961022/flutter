
import 'package:flutter/material.dart';
import '../other_pages/form.dart';
import '../other_pages/search.dart';
import "../tabs/tabs.dart";
import "../user/login.dart";
import "../user/register_first.dart";
import "../user/register_second.dart";
import "../user/register_thrid.dart";
import '../all_dart/appbar_demo.dart';
import '../all_dart/tabbar_controller.dart';
import '../pags/user.dart';
import '../all_dart/all_button.dart';

//配置路由
final routes = {
  '/': (context) => Taps(),
  '/form': (context) => FormPage(),
  '/search': (context, {arguments}) =>
      SearchPage(arguments: arguments), // 需要传值的组件
  '/login': (context) => LoginPage(),
  '/first': (context) => RegisterFirstPage(),
  '/second': (context) => RegisterSecondPage(),
  '/thrid': (context) => RegisterThridPage(),
  '/appbar': (context) => AppBarPage(),
  '/tabbar': (context) => TabBarControllerPage(),
  '/user': (context) => UserPage(),
  '/button': (context) => ButtonDemoPage()
};

//固定写法
var onGenerateRoute = (RouteSettings settings) {
  // 统一处理
  // print(settings.name); // 跳转的路由名称
  final String name = settings.name;
  final Function pageContentBuilder = routes[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
          // 如果有入参 放在arguments中 路由页面直接也需要取arguments
          builder: (context) =>
              pageContentBuilder(context, arguments: settings.arguments));
      return route;
    } else {
      // 如果没有arguments直接传入context上下文
      final Route route =
          MaterialPageRoute(builder: (context) => pageContentBuilder(context));
      return route;
    }
  }
};
