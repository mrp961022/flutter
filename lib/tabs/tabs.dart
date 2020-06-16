import 'package:flutter/material.dart';
// import '../all_dart/img_net_asset.dart';
// import '../all_dart/div_text.dart';
// import '../all_dart/list_view.dart';
// import "../all_dart/layout_component.dart";
// import '../all_dart/aspect_card.dart';
// import "../all_dart/less_full_widget.dart";
// import '../pags/home.dart';
import '../pags/category.dart';
import '../pags/setting.dart';
import '../all_dart/router_all.dart';

class Taps extends StatefulWidget {
  final index; // 传入tab页页码
  Taps({Key key, this.index = 1}) : super(key: key);

  @override
  _TapsState createState() => _TapsState(this.index);
}

class _TapsState extends State<Taps> {
  int _currentIndex = 2;
  List _pageList = [RouterPush(), CategoryPage(), SettingPage()];
  _TapsState(index) {
    this._currentIndex = index;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 脚手架 组件
      appBar: AppBar(title: Text("Flutter Demo")), // 头部组件
      floatingActionButton: Container(
        width: 80,
        height: 80,
        padding: EdgeInsets.all(4),
        margin: EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: Colors.white,
        ),
        child: FloatingActionButton(
          child: Icon(Icons.add),
          backgroundColor: this._currentIndex == 1 ? Colors.red : Colors.yellow,
          onPressed: () {
            print("FloatingActionButton tabs");
            setState(() {
              this._currentIndex = 1;
            });
          },
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.centerDocked, // 居中 在底部
      drawer: Drawer(
          child: Column(
        children: <Widget>[
          // Row(
          //   children: <Widget>[
          //     Expanded(
          //       flex: 1,
          //       child: DrawerHeader(
          //         child: Text(
          //           "你好flutter",
          //           style: TextStyle(color: Colors.white),
          //         ),
          //         decoration: BoxDecoration(
          //             color: Colors.yellow,
          //             image: DecorationImage(
          //               image: NetworkImage(
          //                   "http://pic27.nipic.com/20130226/2786001_105009249000_2.jpg"),
          //               fit: BoxFit.cover,
          //             )),
          //       ),
          //     ) // 抽屉头部组件
          //   ],
          // ),
          // 另一个抽屉头部
          UserAccountsDrawerHeader(
            accountEmail: Text("111@111.com"), // 邮箱
            accountName: Text("王五"), // 用户名
            currentAccountPicture: CircleAvatar(
              // 头像 显示在左侧
              backgroundImage: NetworkImage(
                  "https://tse2-mm.cn.bing.net/th/id/OIP.mzuMiEAaKvP3G7REsT-u7AHaHa?pid=Api&rs=1"),
            ),
            otherAccountsPictures: <Widget>[
              // 显示在右侧的东西
              Image.network(
                  "http://pic3.nipic.com/20090612/1242397_084637016_2.jpg")
            ],
            decoration: BoxDecoration(
              // 背景图片
              image: DecorationImage(
                  image: NetworkImage(
                      "http://pic27.nipic.com/20130226/2786001_105009249000_2.jpg"),
                  fit: BoxFit.cover),
            ),
          ),
          ListTile(
              title: Text("我的空间"),
              leading: CircleAvatar(
                child: Icon(Icons.home),
              )),
          Divider(), // 一根线
          ListTile(
              title: Text("用户中心"),
              onTap: () {
                // 监听事件 侧边栏路由跳转
                Navigator.of(context).pop(); // 隐藏侧边栏
                Navigator.pushNamed(context, "/user");
              },
              leading: CircleAvatar(
                child: Icon(Icons.people),
              )),
          Divider(), // 一根线
          ListTile(
              title: Text("设置中心"),
              leading: CircleAvatar(
                child: Icon(Icons.settings),
              )),
          Divider(), // 一根线
        ],
      )), // 左侧滑动显示侧边栏(抽屉)
      endDrawer: Drawer(
        child: Text("右侧抽屉"),
      ), // 右侧抽屉
      body: this._pageList[this._currentIndex], // 内容
      bottomNavigationBar: BottomNavigationBar(
        // iconSize: 22, // icon大小
        fixedColor: Colors.red, // 选中颜色
        unselectedItemColor: Colors.yellow, // 未选中的颜色
        type: BottomNavigationBarType.fixed, // 配置导航栏可以有多个按钮
        currentIndex: this._currentIndex, // 默认选中哪一个
        onTap: (int index) => {
          // 点击tab触发
          setState(() {
            this._currentIndex = index;
          })
        },
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("首页")),
          BottomNavigationBarItem(
              icon: Icon(Icons.category), title: Text("分类")),
          BottomNavigationBarItem(icon: Icon(Icons.settings), title: Text("设置"))
        ],
      ), // 底部导航条
    );
  }
}
