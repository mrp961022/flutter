# com

A new Flutter application.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## lib文件夹是写代码的地方 默认导出的是main.dart文件

### 一个简单的demo
> 删除main.dart内容
> 引入flutter  import 'package:flutter/material.dart'; 快捷键 fim 回车
> 然后输入以下内容
```
void main() {
  runApp(MyApp()); // runApp flutter的入口方法
}

class MyApp extends StatelessWidget {
  // 继承 flutter 的抽象类
  @override
  Widget build(BuildContext context) {
    // 抽象类的抽象方法 返回值是一个组件
    return Center(
        child: Text(
      "你好flutter",
      textDirection: TextDirection.ltr,
      style:
          TextStyle(fontSize: 40.0, color: Color.fromRGBO(222, 111, 232, 0.8)),
    ));
  }
}

```

### 组件
> MaterialApp 组件 最外层 最大的组件
> Scaffold 包含于MaterialApp的脚手架
> Container 容器 类似div
> Text 文本
> Image 图片 本地加载图片的方式 需要新建2.0x 3.0x 4.0x 文件夹
#### 加载远程图片 
```
Image.network("图片的路径"); // 设备需要联网加载远程图片
```
#### 加载本地图片 首先在pubspec.yaml文件中新增以下代码 下面是文件路径
```
 assets:
    - images/a.jpeg
    - images/2.0x/a.jpeg
    - images/3.0x/a.jpeg 
```
#### 然后在需要引入图片的地方这样写
```
Image.asset("images/a.jpeg");
```
> List 列表
> 布局组件
```
Padding 内边框组件 有些组件没有padding
Row 行组件
Column 列组件
Expanded 相当于web的flex布局
Stack + Align 层叠组件 一般两个组件结合使用
Stack + Positioned 同上
Wrap 流布局组件
```
> AspectRatio 可以设置宽高比的div 
> Card 卡片组件
> CircleAvatar 圆形头像组件
> StatelessWidget  静态无状态组件
> StatefulWidget 动态组件
> BottomNavigationBar 底部导航栏
### 文件

> div_text.dart  Container和Text组件
> img_net_asset.dart Image远程和本地加载图片
> list_view.dart List组件
> layout_component.dart 布局组件
> aspect_card AspectRatio组件和Card组件
> less_full_widget.dart 静态和动态组件
> router_all.dart 路由组件
```
// 各种路由
// 普通路由 无状态路由 无需配置 没有名称
Navigator.of(context).push(MaterialPageRoute(builder: (context) => SearchPage()));
Navigator.of(context).pop(); // 返回上一个路由
// 有状态路由 需要配置路由 并且设置入参 配置祥见 lib\routes\route.dart main.dart引入
// 跳转写法如下
Navigator.pushNamed(context, '/search', arguments:{"id": 123}); // 注意入参写在arguments中
// 替换路由 期望下一级路由返回路由为当前路由的上一级路由 假设上一级 / 这一级 /first 下一级 /second
Navigator.of(context).pushReplacementNamed('/second'); // second返回路由为 /
// 返回根路由 清除所有路由记录
Navigator.of(context).pushAndRemoveUntil( // 清除所有路由记录
    (new MaterialPageRoute(
        builder: (context) => new Taps(  // 要跳转的根目录 
              index: 2, // 设置入参返回指定页面
            ))),
    (route) => false);
```
