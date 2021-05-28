import 'package:bank_soal/utils/style.dart';
import 'package:flutter/material.dart';

ClipRRect buildBottomNavigationBar() {
  return ClipRRect(
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(kRadius * 2.5),
      topRight: Radius.circular(kRadius * 2.5),
    ),
    child: BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          label: "Home",
          icon: Icon(Icons.home),
        ),
        BottomNavigationBarItem(
          label: "Profile",
          icon: Icon(Icons.person),
        ),
      ],
    ),
  );
}
