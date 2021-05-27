import 'package:bank_soal/utils/utils.dart';
import 'package:flutter/material.dart';

/////////////////////////////////
///   TEXT STYLES
////////////////////////////////

const logoStyle = TextStyle(
  fontFamily: 'Pacifico',
  fontSize: 26,
  color: Colors.black54,
  letterSpacing: 2,
);

const logoWhiteStyle = TextStyle(
  fontFamily: 'Pacifico',
  fontSize: 21,
  letterSpacing: 2,
  color: Colors.white,
);
const whiteText = TextStyle(color: Colors.white, fontFamily: 'Poppins');

const blackText = TextStyle(
  color: Colors.black,
  fontFamily: 'Poppins',
  fontSize: 12,
  fontWeight: FontWeight.w500,
);

const titleT = TextStyle(
  color: Colors.white,
  fontSize: 20,
  fontFamily: 'Poppins',
  fontWeight: FontWeight.bold,
);
const disabledText = TextStyle(
  color: Colors.grey,
  fontFamily: 'Poppins',
);
const contrastText = TextStyle(
  color: lightC,
  fontFamily: 'Poppins',
);
const contrastTextBold = TextStyle(
  color: lightC,
  fontFamily: 'Poppins',
  fontWeight: FontWeight.w600,
);

const h3 = TextStyle(
  color: Colors.black,
  fontSize: 24,
  fontWeight: FontWeight.w800,
  fontFamily: 'Poppins',
);

const h4 = TextStyle(
  color: Colors.black,
  fontSize: 18,
  fontWeight: FontWeight.w700,
  fontFamily: 'Poppins',
);

const h5 = TextStyle(
  color: Colors.black,
  fontSize: 18,
  fontWeight: FontWeight.w500,
  fontFamily: 'Poppins',
);

const h6 = TextStyle(
  color: Colors.black,
  fontSize: 16,
  fontWeight: FontWeight.w500,
  fontFamily: 'Poppins',
);

const priceText = TextStyle(
  color: Colors.black,
  fontSize: 16,
  fontWeight: FontWeight.bold,
  fontFamily: 'Poppins',
);

const foodNameText = TextStyle(
  color: Colors.black,
  // fontSize: 16,
  fontWeight: FontWeight.w600,
  fontFamily: 'Poppins',
);

const tabLinkStyle = TextStyle(
  fontWeight: FontWeight.w500,
);

const taglineText = TextStyle(
  color: Colors.grey,
  fontFamily: 'Poppins',
);
const categoryText = TextStyle(
  color: Color(0xff444444),
  fontWeight: FontWeight.w700,
  fontFamily: 'Poppins',
);

const inputFieldTextStyle = TextStyle(
  fontFamily: 'Poppins',
  fontWeight: FontWeight.w400,
  color: dartPrimaryC,
);

const inputFieldHintTextStyle = TextStyle(
  fontFamily: 'Poppins',
  color: Color(0xff444444),
);

const inputFieldPasswordTextStyle = TextStyle(
  fontFamily: 'Poppins',
  fontWeight: FontWeight.w500,
  letterSpacing: 3,
);

const inputFieldHintPaswordTextStyle = TextStyle(
  fontFamily: 'Poppins',
  color: Color(0xff444444),
  letterSpacing: 1,
);

///////////////////////////////////
/// BOX DECORATION STYLES
//////////////////////////////////

const authPlateDecoration = BoxDecoration(
  color: whiteC,
  boxShadow: [
    BoxShadow(
        color: Color.fromRGBO(0, 0, 0, .1),
        blurRadius: 10,
        spreadRadius: 5,
        offset: Offset(0, 1))
  ],
  borderRadius: BorderRadiusDirectional.only(
    bottomEnd: Radius.circular(20),
    bottomStart: Radius.circular(20),
  ),
);

final roundedBox = BoxDecoration(
  borderRadius: BorderRadius.all(Radius.circular(6)),
  border: Border.all(color: dartPrimaryC),
);

/////////////////////////////////////
/// INPUT FIELD DECORATION STYLES
////////////////////////////////////

const inputFieldFocusedBorderStyle = OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(6)),
  borderSide: BorderSide(
    color: Colors.black54,
  ),
);

const inputFieldDefaultBorderStyle = OutlineInputBorder(
  borderSide: BorderSide(
    color: dartPrimaryC,
  ),
  gapPadding: 0,
  borderRadius: BorderRadius.all(
    Radius.circular(6),
  ),
);

const double kPadding = 8;
const double kMargin = 8;
const double kRadius = 10;
