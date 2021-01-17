import 'package:bank_soal/utils/utils.dart';
import 'package:flutter/material.dart';

class RoundedBack extends StatelessWidget {
  final Function onPress;
  const RoundedBack({Key key, @required this.onPress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: whiteC,
        borderRadius: BorderRadius.circular(10),
      ),
      width: 45,
      height: 45,
      child: InkWell(
        onTap: onPress,
        splashColor: dartPrimaryC,
        child: Icon(
          Icons.chevron_left,
          color: primaryC,
          size: 35,
        ),
      ),
    );
  }
}
