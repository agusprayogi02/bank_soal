import 'package:bank_soal/utils/style.dart';
import 'package:bank_soal/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CardPelajaran extends StatelessWidget {
  const CardPelajaran({
    Key key,
    @required this.imgSrc,
    @required this.pelajaran,
    @required this.onTap,
  }) : super(key: key);

  final String imgSrc;
  final String pelajaran;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 115,
        width: 120,
        margin: EdgeInsets.only(right: kMargin * 1.5),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(color: Colors.black),
            BoxShadow(color: Colors.white),
          ],
          border: Border.all(
            color: Colors.black26,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(kRadius),
          color: lightC,
        ),
        child: Column(
          children: [
            SizedBox(
              height: 95,
              width: 120,
              child: AspectRatio(
                aspectRatio: 1,
                child: FadeInImage.assetNetwork(
                  placeholder: "assets/gif/spinner.gif",
                  image: "${apiImg}pelajaran/$imgSrc",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Text(
              pelajaran,
              style: blackText,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ).marginSymmetric(horizontal: kMargin * 0.8)
          ],
        ),
      ),
    );
  }
}
