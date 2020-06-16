import 'package:flutter/material.dart';
// StateLessWidget // 静态无状态组件
// SteteFullWidget // 有状态组件

class LessPage extends StatelessWidget {
  // 无状态组件
  int coutNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text("你好${this.coutNumber}"),
        SizedBox(
          height: 50,
        ),
        RaisedButton(
          onPressed: () {
            // setState(); // 错误写法
            this.coutNumber++; // 没法改变页面中的数据
            print(this.coutNumber);
          },
          child: Text("按钮"),
        )
      ],
    );
  }
}

class FullPage extends StatefulWidget {
  // 有状态组件
  FullPage({Key key}) : super(key: key);

  @override
  _FullPageState createState() => _FullPageState();
}

class _FullPageState extends State<FullPage> {
  int countNum = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Chip(
          label: Text("这是flutter${this.countNum}"),
        ),
        SizedBox(
          height: 20,
        ),
        RaisedButton(
          onPressed: () {
            setState(() {
              // 只有有状态组件中有setState
              this.countNum++;
            });
          },
          child: Text("按钮"),
        )
      ],
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List list = new List();
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Column(
          children: this.list.map((value) {
            return ListTile(
              title: Text(value),
            );
          }).toList(),
        ),
        SizedBox(
          height: 20,
        ),
        RaisedButton(
          onPressed: () {
            setState(() {
              this.list.add("新增数据1");
              this.list.add("新增数据2");
            });
          },
          child: Text("按钮"),
        )
      ],
    );
  }
}
