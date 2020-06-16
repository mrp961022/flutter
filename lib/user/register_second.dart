import 'package:flutter/material.dart';

class RegisterSecondPage extends StatefulWidget {
  RegisterSecondPage({Key key}) : super(key: key);

  @override
  _RegisterSecondPageState createState() => _RegisterSecondPageState();
}

class _RegisterSecondPageState extends State<RegisterSecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("第二个注册页面"),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 50,
          ),
          Text("请输入验证码 跳转第三个页面"),
          SizedBox(
            height: 30,
          ),
          RaisedButton(
            onPressed: () {
              // Navigator.of(context).pushReplacementNamed('/thrid');
              Navigator.pushNamed(context, "/thrid");
            },
            child: Text("下一步"),
          )
        ],
      ),
    );
  }
}
