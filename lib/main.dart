import 'package:flutter/material.dart';
// import "tabs/tabs.dart";
// import './other_pages/form.dart';
// import './other_pages/search.dart';
import 'routes/route.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // 最大的组件 根组件
      debugShowCheckedModeBanner: false, // 导航栏左上角不显示debug
      initialRoute: '/', // 初始化的时候加载的路由
      onGenerateRoute: onGenerateRoute,
      // theme: ThemeData(
      //   // 颜色主题配置
      //   primarySwatch: Colors.blue, // 主题颜色
      // ),
      // routes: routes, // 命名路由 无传参使用
    );
  }
}
