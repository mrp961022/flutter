import 'package:flutter/material.dart';

class CheckDemoPage extends StatefulWidget {
  CheckDemoPage({Key key}) : super(key: key);

  @override
  _CheckDemoPageState createState() => _CheckDemoPageState();
}

class _CheckDemoPageState extends State<CheckDemoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("checkbox"),
      ),
      body: Text("checkbox组件"),
    );
  }
}
