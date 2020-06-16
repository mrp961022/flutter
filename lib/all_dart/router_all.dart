import 'package:flutter/material.dart';

class RouterPush extends StatefulWidget {
  RouterPush({Key key}) : super(key: key);

  @override
  _RouterPushState createState() => _RouterPushState();
}

class _RouterPushState extends State<RouterPush> {
  int _routeNum = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text("这个数是$_routeNum"),
        SizedBox(
          height: 20,
        ),
        RaisedButton(
          child: Text("跳转到搜索页面"),
          // 路由跳转 页面跳转
          onPressed: () {
            // 普通路由需要引入 基本路由 可以实现页面传值跳转
            // Navigator.of(context)
            // .push(MaterialPageRoute(builder: (context) => SearchPage()));
            // 命名路由可以 main.dart配置 其他页面直接跳转
            Navigator.pushNamed(context, '/search', arguments: {"id": 123});
          },
        ),
        SizedBox(
          height: 20,
        ),
        RaisedButton(
          onPressed: () {
            setState(() {
              this._routeNum++;
            });
          },
          child: Text("点击增加"),
        )
      ],
    );
  }
}
