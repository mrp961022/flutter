import 'package:flutter/material.dart';
import '../privateData/listData.dart';

class ListMrp extends StatelessWidget {
  // 垂直列表
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(10),
      children: <Widget>[
        ListTile(
          // leading: Icon(Icons.settings), // 前缀
          leading: Image.network(
              "https://gss0.baidu.com/7Po3dSag_xI4khGko9WTAnF6hhy/zhidao/pic/item/1ad5ad6eddc451da3e3e320eb8fd5266d116320e.jpg"),
          trailing: Icon(Icons.settings_bluetooth), // 后缀
          title: Text(
            '“案板上检测出新冠病毒”',
            style: TextStyle(fontSize: 22),
          ), // 一级标题
        ),
        ListTile(
          leading: Icon(
            Icons.search,
            color: Colors.yellow,
          ),
          title: Text('“案板上检测出新冠病毒”折射出的监管漏洞'), // 一级标题
          subtitle: Text('3日内北京新增7例新冠肺炎本土确诊病例'), // 二级标题
        ),
        ListTile(
          leading: Icon(Icons.send),
          title: Text('“案板上检测出新冠病毒”折射出的监管漏洞'), // 一级标题
          subtitle: Text('3日内北京新增7例新冠肺炎本土确诊病例'), // 二级标题
        ),
        ListTile(
          leading: Icon(Icons.sentiment_satisfied),
          title: Text('“案板上检测出新冠病毒”折射出的监管漏洞'), // 一级标题
          subtitle: Text('3日内北京新增7例新冠肺炎本土确诊病例'), // 二级标题
        ),
      ],
    );
  }
}

class ListMap1 extends StatelessWidget {
  // 垂直图文列表
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(10),
      children: <Widget>[
        Image.network(
            "http://5b0988e595225.cdn.sohucs.com/images/20190523/a1824a1bcfa344e4b7ac816da31c1e72.jpeg"),
        Container(
          height: 10,
        ),
        Image.network(
            "http://n.sinaimg.cn/sinacn20111/133/w1333h2000/20190111/ceec-hrpcmqv1504640.jpg"),
        Container(
          height: 10,
        ),
        Image.network(
            "http://n.sinaimg.cn/ent/transform/20170324/WDWu-fyctevp6937026.jpg"),
        Container(
          height: 10,
        ),
        Image.network(
            "http://pic26.nipic.com/20130118/5056611_203639447000_2.jpg")
      ],
    );
  }
}

class ListHorizontal extends StatelessWidget {
  // 水平列表
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: ListView(
        scrollDirection: Axis.horizontal, // 水平列表
        // scrollDirection: Axis.vertical, // 垂直列表（默认）
        children: <Widget>[
          Container(
            width: 180, // 水平列表要有 高度会自适应父级
            height: 180, // 垂直列表要有 宽度会自适应父级
            color: Colors.deepOrange,
          ),
          Container(
            width: 180,
            height: 180,
            color: Colors.deepPurpleAccent,
            child: ListView(
              children: <Widget>[
                Image.network(
                    "http://pic26.nipic.com/20130118/5056611_203639447000_2.jpg"),
                Text("我是一段文本")
              ],
            ),
          ),
          Container(
            width: 180,
            height: 180,
            color: Colors.deepPurple,
          ),
          Container(
            width: 180,
            height: 180,
            color: Colors.red,
          ),
          Container(
            width: 180,
            height: 180,
            color: Colors.blue,
          ),
          Container(
            width: 180,
            height: 180,
            color: Colors.yellow,
          )
        ],
      ),
    );
  }
}

class ListDong extends StatelessWidget {
  // 实现动态列表

  // 自定义方法
  List<Widget> _getData() {
    // 静态方法
    List<Widget> newList = new List();
    for (var i = 0; i < 20; i++) {
      newList.add(ListTile(
        title: Text("我是第${i + 1}个列表"),
      ));
    }
    return newList;
  }

  // 获取静态文件中的数据
  List<Widget> _getData1() {
    List tempList = listData.map((value) {
      return ListTile(
        leading: Image.network(value["imageUrl"]),
        title: Text(value["title"]),
        subtitle: Text(value["author"]),
      );
    }).toList();
    return tempList;
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: this._getData1(),
    );
  }
}

class ListBuilder extends StatelessWidget {
  // listview builder 实现
  List list = new List();
  ListBuilder() {
    for (var i = 0; i < 20; i++) {
      this.list.add("我是第${i + 1}个列表");
    }
  }
  Widget _getListData(content, index) {
    return ListTile(
      leading: Image.network(listData[index]["imageUrl"]),
      title: Text(listData[index]["title"]),
      subtitle: Text(listData[index]["author"]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: listData.length, // 定义长度（循环次数）
      // itemBuilder: (context, index) {
      //   // 依次往listview中插入
      //   return ListTile(
      //     title: Text(this.list[index]),
      //   );
      // },
      itemBuilder: this._getListData, // 代码过长可以抽离出去
    );
  }
}

class ListGrid extends StatelessWidget {
  // 网格列表
  // 获取静态文件中的数据
  List<Widget> _getData() {
    // 静态方法
    List<Widget> newList = new List();
    for (var i = 0; i < 20; i++) {
      newList.add(Container(
        alignment: Alignment.center,
        child: Text(
          '这是第${i + 1}条数据',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        color: Colors.blue,
      ));
    }
    return newList;
  }

  List<Widget> _getData1() {
    var tempList = listData.map((value) {
      return Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            border:
                Border.all(color: Color.fromRGBO(233, 233, 233, 0.9), width: 1),
          ),
          child: Column(
            // 元素不会和listview一样平铺
            children: <Widget>[
              Image.network(value["imageUrl"]),
              SizedBox(height: 20), // 让上下组件有一段距离
              Text(
                value["title"],
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15),
              )
            ],
          ));
    });
    return tempList.toList();
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2, // 网格布局有几列
      crossAxisSpacing: 10, // 左右网格间距
      mainAxisSpacing: 10, // 上下网格间距
      // childAspectRatio: 2, // 每个网格元素宽高比 宽/高
      padding: EdgeInsets.all(10), // padding
      children: this._getData1(), // 网格内容
    );
  }
}

class ListGridBuilder extends StatelessWidget {
  // gridview的builder
  Widget _getListData(context, index) {
    return Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border:
              Border.all(color: Color.fromRGBO(233, 233, 233, 0.9), width: 1),
        ),
        child: Column(
          // 元素不会和listview一样平铺
          children: <Widget>[
            Image.network(listData[index]["imageUrl"]),
            SizedBox(height: 20), // 让上下组件有一段距离
            Text(
              listData[index]["title"],
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 15),
            )
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 2),
      itemCount: listData.length,
      itemBuilder: this._getListData,
    );
  }
}
