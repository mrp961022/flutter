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
      floatingActionButton: FloatingActionButton(
        // 底部浮动按钮
        backgroundColor: Colors.yellow, // 背景颜色
        onPressed: () {
          print("FloatingActionButton");
        },
        child: Icon(
          Icons.add,
          color: Colors.blue, // 字体颜色
          size: 40, // 字体大小
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.centerFloat, // 浮动按钮位置
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
              Container(
                height: 80,
                child: RaisedButton(
                  splashColor: Colors.red, // 长按的样式
                  onPressed: () {},
                  child: Text("圆形按钮"),
                  shape: CircleBorder(
                    side: BorderSide(color: Colors.white),
                  ),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                // 扁平化按钮
                color: Colors.blue, // 背景颜色
                textColor: Colors.yellow, // 字体颜色
                onPressed: () {},
                child: Text("我是一个按钮"),
              ),
              SizedBox(width: 10),
              OutlineButton(
                color: Colors.blue, // 没有效果 没有背景颜色
                textColor: Colors.yellow, // 可以改字体颜色
                onPressed: () {},
                child: Text("outline按钮"),
              ),
              IconButton(
                icon: Icon(Icons.home),
                onPressed: () {},
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Container(
                  height: 50,
                  margin: EdgeInsets.all(10),
                  child: OutlineButton(
                    child: Text("注册"),
                    onPressed: () {},
                  ),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ButtonBar(
                children: <Widget>[
                  RaisedButton(
                    onPressed: () {},
                    child: Text("第一个"),
                  ),
                  RaisedButton(
                    onPressed: () {},
                    child: Text("第二个"),
                  ),
                  MyButton(
                    text: "自定义按钮第三个",
                    width: 130,
                    pressed: () {
                      print("自定义组件");
                    },
                  )
                ],
              )
            ],
          ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: <Widget>[
          //     FloatingActionButton(
          //       // 浮动按钮
          //       child: Icon(Icons.add),
          //       onPressed: () {},
          //     )
          //   ],
          // )
        ],
      ),
    );
  }
}
// 自定义按钮组件

class MyButton extends StatelessWidget {
  final text;
  final pressed;
  final double height;
  final double width;
  const MyButton(
      {this.text = "", this.pressed = null, this.height = 30, this.width = 80});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: this.height,
      width: this.width,
      child: RaisedButton(
        child: Text(this.text),
        onPressed: this.pressed,
      ),
    );
  }
}
