import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

const String apiUrl = "http://192.168.43.116:4000/";
const lightC = Color(0xFF83B9FF);
const whiteC = Color(0xFFFFFFFF);
const primaryC = Color(0xFF2962FF);
const dartPrimaryC = Color(0xFF0039CB);
const activeC = Color(0xFF00FF38);
const Color bgColor = Color(0xFF83B9FF);

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
