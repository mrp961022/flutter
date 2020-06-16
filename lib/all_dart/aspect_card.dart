import 'package:flutter/material.dart';
import "../privateData/listData.dart";

class AspectRatioDemo extends StatelessWidget {
  // 设置宽高比
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3.0 / 1.0, // 宽高比
      child: Container(
        color: Colors.red,
      ),
    );
  }
}

class CardDemo extends StatelessWidget {
  // 卡片组件
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text(
                  "张三",
                  style: TextStyle(fontSize: 30),
                ),
                subtitle: Text("高级工程师"),
              ),
              ListTile(
                title: Text("电话：133xxxxx"),
              ),
              ListTile(
                title: Text("地址：xxxx"),
              )
            ],
          ),
        ),
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text(
                  "李四",
                  style: TextStyle(fontSize: 30),
                ),
                subtitle: Text("高级工程师"),
              ),
              ListTile(
                title: Text("电话：133xxxxx"),
              ),
              ListTile(
                title: Text("地址：xxxx"),
              )
            ],
          ),
        ),
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text(
                  "王五",
                  style: TextStyle(fontSize: 30),
                ),
                subtitle: Text("高级工程师"),
              ),
              ListTile(
                title: Text("电话：133xxxxx"),
              ),
              ListTile(
                title: Text("地址：xxxx"),
              )
            ],
          ),
        )
      ],
    );
  }
}

class CardImgDemo extends StatelessWidget {
  // 卡片图文组件
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: listData.map((value) {
        return Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              AspectRatio(
                aspectRatio: 16 / 9,
                child: Image.network(
                  value["imageUrl"],
                  fit: BoxFit.cover,
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                  // 头像组件 生成一个圆形的头像
                  backgroundImage: NetworkImage(value["imageUrl"]),
                ),
                title: Text(value["author"]),
                subtitle: Text(value["title"]),
              )
            ],
          ),
        );
      }).toList(),
    );
  }
}
