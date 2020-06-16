import 'package:flutter/material.dart';

class ImgContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return Center(
    //     child: Container(
    //   // child: Image.asset(
    //   //   // 本地图片
    //   //   'images/a.jpeg',
    //   //   fit: BoxFit.cover,
    //   // ),
    //   child: Image.network(
    //     "http://www.ionic.wang/statics/index/images/ionic4.png",
    //     fit: BoxFit.cover,
    //   ),
    //   height: 300,
    //   width: 300,
    //   decoration: BoxDecoration(
    //       borderRadius: BorderRadius.circular(150),
    //       image: DecorationImage(
    //           // image: NetworkImage("http://www.ionic.wang/statics/index/images/ionic4.png"),
    //           image: AssetImage('images/a.jpeg'),
    //           fit: BoxFit.cover)),
    // ));
    // 圆形图片
    return Center(
        child: Container(
      child: ClipOval(
        child: Image.asset(
          "images/a.jpeg",
          height: 300,
          width: 300,
          fit: BoxFit.cover,
        ),
      ),
    ));
  }
}
