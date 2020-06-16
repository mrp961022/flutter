import 'package:flutter/material.dart';

class RegisterFirstPage extends StatefulWidget {
  RegisterFirstPage({Key key}) : super(key: key);

  @override
  _RegisterFirstPageState createState() => _RegisterFirstPageState();
}

class _RegisterFirstPageState extends State<RegisterFirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("注册页面1"),
        ),
        body: Column(
          children: <Widget>[
            SizedBox(
              height: 50,
            ),
            Text("这是第一个注册页面 点击确认跳转下一个注册页面"),
            RaisedButton(
              onPressed: () {
                // 希望跳转第二个注册页面 返回直接返回到设置页面 替换路由
                // 点击加载第二个页面 第二个页面的路由把当前路由替换 第二个的路由上一个就成了当前路由的上一个
                // Navigator.of(context).pushReplacementNamed('/second');
                // 使用普通路由 但是左上角的返回功能是正常返回上一级
                Navigator.pushNamed(context, "/second");
              },
              child: Text("下一步"),
            )
          ],
        ));
  }
}
