import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

final String apiUrl = "http://192.168.43.116:4000/";
final lightC = Color(0xFF83B9FF);
final whiteC = Color(0xFFFFFFFF);
final primaryC = Color(0xFF2962FF);
final dartPrimaryC = Color(0xFF0039CB);
final activeC = Color(0xFF00FF38);

final logo = Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Icon(
      Icons.school,
      size: 45,
      color: whiteC,
    ),
    " bank-soal"
        .toUpperCase()
        .text
        .fontFamily("Rasa")
        .white
        .size(40)
        .bold
        .make()
        .box
        .margin(EdgeInsets.only(top: 3))
        .make(),
  ],
);
