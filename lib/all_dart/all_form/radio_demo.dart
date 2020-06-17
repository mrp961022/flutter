import 'package:flutter/material.dart';

class RadioDemoPage extends StatefulWidget {
  RadioDemoPage({Key key}) : super(key: key);

  @override
  _RadioDemoPageState createState() => _RadioDemoPageState();
}

class _RadioDemoPageState extends State<RadioDemoPage> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        title: Text("radio"),
      ),
      body: Text("radio组件"),
    );
  }
}
