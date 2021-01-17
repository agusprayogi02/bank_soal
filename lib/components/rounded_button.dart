import 'package:bank_soal/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class RoundedButton extends StatelessWidget {
  final double size;
  final String label;
  final Function onPress;
  final Color color;
  final double borderRadius;
  const RoundedButton({
    Key key,
    this.size,
    @required this.label,
    this.onPress,
    this.color = primaryC,
    this.borderRadius = 5,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlatButton(
        color: color,
        textColor: whiteC,
        splashColor: lightC,
        onPressed: onPress,
        child: "$label"
            .text
            .semiBold
            .size(size)
            .make()
            .box
            .margin(EdgeInsets.symmetric(vertical: size * 0.4, horizontal: size))
            .make(),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
      ),
    );
  }
}
