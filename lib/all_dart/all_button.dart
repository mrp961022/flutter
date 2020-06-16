import 'package:flutter/material.dart';

// 按钮组件
class ButtonDemoPage extends StatelessWidget {
  const ButtonDemoPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("按钮组件"),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                onPressed: () {
                  print("普通按钮");
                },
                child: Text("普通按钮"),
              ),
              SizedBox(width: 5),
              RaisedButton(
                color: Colors.blue,
                textColor: Colors.white,
                onPressed: () {
                  print("有颜色的按钮");
                },
                child: Text("有颜色的按钮"),
              ),
              SizedBox(width: 5),
              RaisedButton(
                color: Colors.blue,
                textColor: Colors.white,
                elevation: 10,
                onPressed: () {
                  print("有阴影的按钮");
                },
                child: Text("有阴影的按钮"),
              ),
              SizedBox(width: 5),
              RaisedButton.icon(
                icon: Icon(Icons.search),
                onPressed: () {
                  print("图标按钮");
                },
                label: Text("图标按钮"),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 200,
                height: 50,
                child: RaisedButton(
                  onPressed: () {},
                  child: Text("设置按钮宽高"),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Container(
                  height: 40,
                  margin: EdgeInsets.all(10),
                  child: RaisedButton(
                    onPressed: () {},
                    child: Text("自适应宽度按钮"),
                  ),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                onPressed: () {},
                child: Text("圆角按钮"),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              RaisedButton.icon(
                onPressed: () {},
                shape: CircleBorder(
                  side: BorderSide(color: Colors.white),
                ),
                icon: Icon(Icons.search),
                label: Text(""),
              )
            ],
          )
        ],
      ),
    );
  }
}
