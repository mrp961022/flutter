import 'package:flutter/material.dart';

class FormDemoPage extends StatefulWidget {
  FormDemoPage({Key key}) : super(key: key);

  @override
  _FormDemoPageState createState() => _FormDemoPageState();
}

class _FormDemoPageState extends State<FormDemoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("form"),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            TextField(), // 输入框
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                hintText: "请输入搜索项", // placeholder
                border: OutlineInputBorder(), // 有边框
              ),
            ),
            SizedBox(height: 20),
            TextField(
              maxLines: 2, // 多行文本框
              // maxLength: 1000, // 最大输入字符数
              decoration: InputDecoration(
                hintText: "请输入搜索项", // placeholder
                border: OutlineInputBorder(), // 有边框
              ),
            ),
            SizedBox(height: 20),
            TextField(
              obscureText: true, // 密码框
              decoration: InputDecoration(
                hintText: "请输入密码", // placeholder
                border: OutlineInputBorder(), // 有边框
              ),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                icon: Icon(Icons.people), // 会有个小图标
                hintText: "请输入用户名", // placeholder
                border: OutlineInputBorder(), // 有边框
                labelText: "用户名", // 输入时右上角有个提示
              ),
            ),
          ],
        ),
      ),
    );
  }
}
