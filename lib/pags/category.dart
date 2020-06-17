import 'package:flutter/material.dart';

class CategoryPage extends StatefulWidget {
  CategoryPage({Key key}) : super(key: key);

  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      // 可以在Scaffold组件中再写DefaultTabController 实现顶部tab切换
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black26, // 头部背景颜色
          title: Row(
            // 这样写的话tab要写在title中
            children: <Widget>[
              Expanded(
                child: TabBar(
                  // isScrollable: true, // 菜单过多时左右滑动
                  indicatorColor: Colors.blue, // 指示器(下面那条线)颜色
                  indicatorSize: TabBarIndicatorSize.tab, // 指示器长度(tab/label)
                  labelColor: Colors.blue, // 选中字体颜色
                  unselectedLabelColor: Colors.white, // 未选中的颜色
                  tabs: <Widget>[
                    Tab(text: "tab1"),
                    Tab(text: "tab2"),
                  ],
                ),
              )
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  child: Text("点击跳转表单页面"),
                  onPressed: () {
                    Navigator.pushNamed(context, '/form');
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                RaisedButton(
                  child: Text("点击跳转一个不同样式的页面"),
                  onPressed: () {
                    Navigator.pushNamed(context, '/appbar');
                  },
                ),
              ],
            ),
            Column(
              children: <Widget>[
                SizedBox(height: 100),
                RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/formdemo");
                  },
                  child: Text("表单页面"),
                ),
                SizedBox(height: 30),
                RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/checkbox");
                  },
                  child: Text("checkbox"),
                ),
                SizedBox(height: 30),
                RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/radio");
                  },
                  child: Text("radioDemo"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
