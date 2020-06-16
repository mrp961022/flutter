import 'package:flutter/material.dart';
import '../tabs/tabs.dart';

class RegisterThridPage extends StatefulWidget {
  RegisterThridPage({Key key}) : super(key: key);

  @override
  _RegisterThridPageState createState() => _RegisterThridPageState();
}

class _RegisterThridPageState extends State<RegisterThridPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("第三个注册页面"),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 100,
          ),
          Text("点击跳转到首页"),
          RaisedButton(
            onPressed: () {
              // Navigator.of(context).pop();
              // 返回根目录 清除所有路由记录
              Navigator.of(context).pushAndRemoveUntil(
                  (new MaterialPageRoute(
                      builder: (context) => new Taps(
                            index: 2,
                          ))),
                  (route) => false);
            },
            child: Text("完成"),
          )
        ],
      ),
    );
  }
}
