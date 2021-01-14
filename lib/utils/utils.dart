import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

final String apiUrl = "http://localhost:4000";
final lightC = Color(0xFF83B9FF);
final whiteC = Color(0xFFFFFFFF);
final primaryC = Color(0xFF2962FF);
final dartPrimaryC = Color(0xFF0039CB);
final activeC = Color(0xFF00FF38);

final logo = Row(
  children: [
    Icon(Icons.school),
    "bank".toUpperCase().text.fontFamily("Rasa").size(40).bold.make(),
    "soal".toUpperCase().text.fontFamily("Righteous").size(38).make(),
  ],
);
