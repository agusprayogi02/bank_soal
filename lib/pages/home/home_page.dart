import 'package:bank_soal/utils/utils.dart';
import 'package:flutter/material.dart';

import 'components/body.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryC,
      appBar: AppBar(
        toolbarHeight: 0,
      ),
      body: Body(),
    );
  }
}
