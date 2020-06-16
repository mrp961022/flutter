import 'package:flutter/material.dart';

class TabBarControllerPage extends StatefulWidget {
  TabBarControllerPage({Key key}) : super(key: key);

  @override
  _TabBarControllerPageState createState() => _TabBarControllerPageState();
}

class _TabBarControllerPageState extends State<TabBarControllerPage>
    with SingleTickerProviderStateMixin {
  // 定义一个有状态的组件 再多继承SingleTickerProviderStateMixin
  TabController _tabController;
  @override
  void initState() {
    // 生命周期函数 加载即触发
    super.initState();
    _tabController = new TabController(vsync: this, length: 2);
    // 实例化tabcontroller vsync 固定写法 length 有几个tab页
    _tabController.addListener(() {
      // 监听tab改变
      print(_tabController.index);
    });
  }
  // @override
  // void dispose() { // 销毁的生命周期函数
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TabBarControllerPage"),
        bottom: TabBar(
          controller: this._tabController, // 这种写法要加这句话
          tabs: <Widget>[
            Tab(text: "热销"),
            Tab(text: "推荐"),
          ],
        ),
      ),
      body: TabBarView(
        controller: this._tabController, // 这种写法要加这句话
        children: <Widget>[
          Center(child: Text("热销的东西")),
          Center(child: Text("推荐的东西"))
        ],
      ),
    );
  }
}
