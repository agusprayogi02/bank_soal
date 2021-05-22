import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class RoundedBox extends StatelessWidget {
  final Color bg;
  final Widget child;
  final DecorationImage bImg;
  final BoxBorder border;
  final EdgeInsetsGeometry margin;
  const RoundedBox(
      {Key key, this.bg, this.child, this.bImg, this.border, this.margin})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var w = context.percentWidth, h = context.percentHeight;
    return VxCapsule(
      height: 50,
      width: w * 100,
      backgroundColor: bg,
      backgroundImage: bImg,
      border: border,
      child: child,
    ).shadowMd.box.margin(margin).make();
  }
}
