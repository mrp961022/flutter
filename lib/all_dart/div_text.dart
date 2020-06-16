import 'package:flutter/material.dart';

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text(
          "大家好 这是一行挺长的文本 一行放不下 甚至两行也放不下", // 内容 必填
          textDirection: TextDirection.ltr, // 文字方向
          style: TextStyle(
              fontSize: 40.0,
              color: Colors.red,
              fontWeight: FontWeight.w800 /**加粗 */,
              fontStyle: FontStyle.italic,
              decoration: TextDecoration.lineThrough /**装饰线 */,
              decorationColor: Colors.white,
              decorationStyle: TextDecorationStyle.dashed,
              letterSpacing: 3), // 样式
          textAlign: TextAlign.left, // 居左中右
          // textScaleFactor: 2, // 字体缩放
          overflow: TextOverflow.ellipsis, // 超出样式
          maxLines: 2, // 最大行数
        ),
        height: 300.0, // 宽高
        width: 300.0,
        // padding: EdgeInsets.all(10) /**内边距 */,
        padding: EdgeInsets.fromLTRB(10, 20, 15, 0),
        margin: EdgeInsets.all(10),

        decoration: BoxDecoration(
          // 定义样式 通过 BoxDecoration 装饰
          color: Colors.yellow,
          border: Border.all(color: Colors.blue, width: 2.0),
          borderRadius: BorderRadius.all(Radius.circular(15)) /**圆角 */,
        ),
        // transform: Matrix4.translationValues(100, 0, 0), // 偏移
        // transform: Matrix4.rotationZ(0.3), // 旋转
        // transform: Matrix4.skew(alpha, beta), // 倾斜
        // transform: Matrix4.diagonal3Values(1.2, 1, 1), // 缩放
        alignment: Alignment.topLeft, // 文字位置
      ),
    );
  }
}
