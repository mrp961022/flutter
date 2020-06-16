import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  SettingPage({Key key}) : super(key: key);

  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 50,
        ),
        RaisedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/login');
          },
          child: Text("跳转登陆页面"),
        ),
        SizedBox(
          height: 30,
        ),
        RaisedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/first');
          },
          child: Text("跳转注册页面页面"),
        ),
      ],
    );
  }
}
