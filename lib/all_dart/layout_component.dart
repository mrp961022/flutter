// 常见的布局组件
import 'package:flutter/material.dart';

class PaddingDemo extends StatelessWidget {
  // padding组件
  @override
  Widget build(BuildContext context) {
    return Padding(
      // 有些元素没有padding时在外层包裹一个padding组件
      padding: EdgeInsets.fromLTRB(0, 0, 10, 10),
      child: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 1.7,
        children: <Widget>[
          Padding(
            child: Image.network(
              "https://www.itying.com/images/flutter/1.png",
              fit: BoxFit.cover,
            ),
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
          ),
          Padding(
            child: Image.network(
              "https://www.itying.com/images/flutter/2.png",
              fit: BoxFit.cover,
            ),
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
          ),
          Padding(
            child: Image.network(
              "https://www.itying.com/images/flutter/3.png",
              fit: BoxFit.cover,
            ),
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
          ),
          Padding(
            child: Image.network(
              "https://www.itying.com/images/flutter/4.png",
              fit: BoxFit.cover,
            ),
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
          ),
          Padding(
            child: Image.network(
              "https://www.itying.com/images/flutter/5.png",
              fit: BoxFit.cover,
            ),
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
          ),
          Padding(
            child: Image.network(
              "https://www.itying.com/images/flutter/6.png",
              fit: BoxFit.cover,
            ),
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
          ),
          Padding(
            child: Image.network(
              "https://www.itying.com/images/flutter/1.png",
              fit: BoxFit.cover,
            ),
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
          ),
          Padding(
            child: Image.network(
              "https://www.itying.com/images/flutter/2.png",
              fit: BoxFit.cover,
            ),
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
          ),
          Padding(
            child: Image.network(
              "https://www.itying.com/images/flutter/3.png",
              fit: BoxFit.cover,
            ),
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
          ),
          Padding(
            child: Image.network(
              "https://www.itying.com/images/flutter/4.png",
              fit: BoxFit.cover,
            ),
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
          ),
          Padding(
            child: Image.network(
              "https://www.itying.com/images/flutter/5.png",
              fit: BoxFit.cover,
            ),
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
          ),
          Padding(
            child: Image.network(
              "https://www.itying.com/images/flutter/6.png",
              fit: BoxFit.cover,
            ),
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
          ),
        ],
      ),
    );
  }
}

class RowDemo extends StatelessWidget {
  // 水平布局组件
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      width: 400,
      color: Colors.pink,
      child: Row(
        mainAxisAlignment:
            MainAxisAlignment.spaceEvenly, // 水平位置的布局 spaceEvenly元素均匀分配间距
        crossAxisAlignment: CrossAxisAlignment.start, // 垂直位置布局
        children: <Widget>[
          IconContanier(Icons.home, color: Colors.blue),
          IconContanier(Icons.hot_tub, color: Colors.orange),
          IconContanier(Icons.search, color: Colors.yellow),
        ],
      ),
    );
  }
}

class ColDemo extends StatelessWidget {
  // 垂直布局组件 默认为垂直
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      width: 400,
      color: Colors.pink,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          IconContanier(Icons.home, color: Colors.blue),
          IconContanier(Icons.hot_tub, color: Colors.orange),
          IconContanier(Icons.search, color: Colors.yellow),
        ],
      ),
    );
  }
}

class ExpandedDemo extends StatelessWidget {
  // 类似于web的flex布局
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        IconContanier(Icons.ac_unit, color: Colors.pink), // 固定宽度
        Expanded(
          // 自适应
          flex: 1,
          child: IconContanier(Icons.hot_tub, color: Colors.orange),
        ),
        Expanded(
          flex: 2,
          child: IconContanier(Icons.search, color: Colors.yellow),
        ),
        Expanded(
          flex: 1,
          child: IconContanier(Icons.home, color: Colors.blue),
        )
      ],
    );
  }
}

class IconContanier extends StatelessWidget {
  // 自定义组件
  double size = 32;
  Color color = Colors.white;
  IconData icon;
  IconContanier(this.icon, {this.size, this.color});
  // icon必传 color和size可选
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      color: this.color,
      child:
          Center(child: Icon(this.icon, size: this.size, color: Colors.white)),
    );
  }
}

class LayoutDemo extends StatelessWidget {
  // 应用所有的完成布局
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(
                height: 180,
                color: Colors.black,
                child: Text(
                  "你好flutter",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: <Widget>[
            Expanded(
                flex: 2,
                child: Container(
                  height: 180,
                  child: Image.network(
                    "https://www.itying.com/images/flutter/2.png",
                    fit: BoxFit.cover,
                  ),
                )),
            SizedBox(width: 10),
            Expanded(
              flex: 1,
              child: Container(
                  height: 180,
                  child: ListView(
                    children: <Widget>[
                      Container(
                        height: 85,
                        child: Image.network(
                          "https://www.itying.com/images/flutter/3.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 85,
                        child: Image.network(
                          "https://www.itying.com/images/flutter/4.png",
                          fit: BoxFit.cover,
                        ),
                      )
                    ],
                  )),
            )
          ],
        )
      ],
    );
  }
}

class StackDemo extends StatelessWidget {
  // 层叠组件 定位布局
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment(-1, 1), // (a,b) -1~1 a表示x轴位置 b表示y轴位置
        children: <Widget>[
          Container(
            height: 400,
            width: 300,
            color: Colors.red,
          ),
          Text(
            "我是一个文本2",
            style: TextStyle(fontSize: 40, color: Colors.white),
          )
        ],
      ),
    );
  }
}

class StackAlignDemo extends StatelessWidget {
  // stack+align 布局每个组件的方位
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      height: 400,
      width: 300,
      color: Colors.red,
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.topLeft, // 与stack的参数一致
            child: Icon(
              Icons.home,
              size: 40,
              color: Colors.white,
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Icon(
              Icons.hot_tub,
              size: 40,
              color: Colors.blue,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Icon(
              Icons.https,
              size: 40,
              color: Colors.yellow,
            ),
          ),
        ],
      ),
    ));
  }
}

class StackPositionedDemo extends StatelessWidget {
  // stack+positioned 布局每个组件的方位
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      height: 400,
      width: 300,
      color: Colors.red,
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 0, // top left right bottom 相对于边框的位置 值是double类型
            child: Icon(
              Icons.home,
              size: 40,
              color: Colors.white,
            ),
          ),
          Positioned(
            top: 100,
            child: Icon(
              Icons.hot_tub,
              size: 40,
              color: Colors.blue,
            ),
          ),
          Positioned(
            top: 200,
            child: Icon(
              Icons.https,
              size: 40,
              color: Colors.yellow,
            ),
          ),
        ],
      ),
    ));
  }
}

class WrapDemo extends StatelessWidget {
  // 实现流布局
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 600,
      color: Colors.blue,
      padding: EdgeInsets.all(10),
      child: Wrap(
        spacing: 10, // 元素间距
        // runSpacing: 10, // 行间距
        // alignment: WrapAlignment.spaceEvenly, // 水平对齐方式
        direction: Axis.horizontal, // 显示方向 横向/纵向
        // runAlignment: WrapAlignment.end, // 垂直对齐方式
        children: <Widget>[
          MyButton("第一季"),
          MyButton("第一季"),
          MyButton("第一季"),
          MyButton("第一季"),
          MyButton("第一季"),
          MyButton("第一季"),
          MyButton("第一季"),
        ],
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  final String text;
  MyButton(this.text);
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {},
      child: Text(this.text),
      textColor: Theme.of(context).accentColor,
    );
  }
}
