import 'package:flutter/material.dart';
import "package:velocity_x/velocity_x.dart";

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: "Hai Broo".text.bold.make(),
      ),
      body: Center(
        child: "Hello Broo".marquee(),
      ),
    );
  }
}
