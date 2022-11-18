import 'dart:io';

import 'package:azafilters/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle text300 = GoogleFonts.roboto(
    fontSize: 12, fontWeight: FontWeight.w300, color: greyScale30);
TextStyle text400 = GoogleFonts.roboto(
    fontSize: 12, fontWeight: FontWeight.w400, color: greyScale30);

TextStyle text500 = GoogleFonts.roboto(
    fontSize: 12, fontWeight: FontWeight.w500, color: greyScale30);

TextStyle text600 = GoogleFonts.roboto(
    fontSize: 12, fontWeight: FontWeight.w600, color: greyScale30);

TextStyle text700 = GoogleFonts.roboto(
    fontSize: 12, fontWeight: FontWeight.w700, color: greyScale30);

routePushTo(BuildContext context,
    {required Widget route, bool isSlide = false}) async {
  final popData = await Navigator.of(context).push(isSlide || Platform.isIOS
      ? CupertinoPageRoute(builder: (context) => route)
      : MaterialPageRoute(builder: (context) => route));
  return popData;
}
