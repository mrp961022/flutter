import 'package:flutter/material.dart';

class AppBarPage extends StatelessWidget {
  const AppBarPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      // 顶部tab切换
      length: 2, // 顶部tab的数量
      child: Scaffold(
        appBar: AppBar(
          title: Text("AppBarDemo"),
          centerTitle: true, // 标题居中显示
          backgroundColor: Colors.red, // 改变导航的背景颜色
          // leading: IconButton(
          //     // 左侧图标 会盖住路由的默认返回
          //     icon: Icon(Icons.menu),
          //     onPressed: () {
          //       print('menu');
          //     }),
          // actions: <Widget>[
          //   // 右侧图标
          //   IconButton(
          //       icon: Icon(Icons.search),
          //       onPressed: () {
          //         print("search");
          //       }),
          //   IconButton(
          //       icon: Icon(Icons.settings),
          //       onPressed: () {
          //         print("setting");
          //       })
          // ],
          bottom: TabBar(
            tabs: <Widget>[
              Tab(text: "热门"),
              Tab(text: "推荐"),
            ],
          ),
        ),
        body: TabBarView(
          // DefaultTabController的length和TabBar个数还有TabBarView个数要对应起来
          children: <Widget>[
            ListView(
              children: <Widget>[
                ListTile(title: Text("第一个tab页")),
                ListTile(title: Text("第一个tab页")),
                ListTile(title: Text("第一个tab页")),
                ListTile(title: Text("第一个tab页")),
                ListTile(title: Text("第一个tab页")),
              ],
            ),
            ListView(
              children: <Widget>[
                ListTile(title: Text("第二个tab页")),
                ListTile(title: Text("第二个tab页")),
                ListTile(title: Text("第二个tab页")),
                ListTile(title: Text("第二个tab页")),
                ListTile(title: Text("第二个tab页")),
              ],
            )
          ],
        ),
      ),
    );
  }
}
