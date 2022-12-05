import 'package:azafilters/constant.dart';
import 'package:azafilters/utility.dart';
import 'package:flutter/material.dart';

AppBar appbarWidget({required String title, bool icon = true}) {
  return AppBar(
    backgroundColor: Colors.white,
    iconTheme: const IconThemeData(color: greyScale30, size: 16),
    elevation: 0,
    title: Text(
      title,
      style: text500.copyWith(fontSize: 14),
    ),
    titleSpacing: 16,
    actions: [
      Padding(
        padding: const EdgeInsets.only(right: 16),
        child: InkWell(
          splashFactory: NoSplash.splashFactory,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: icon
                ? const Icon(
                    semanticLabel: "Close Page Icon",
                    Icons.close,
                    color: greyScale60,
                  )
                : Center(
                    child: Text(
                      "Clear",
                      style: text400.copyWith(fontSize: 14),
                    ),
                  ),
          ),
          onTap: () {},
        ),
      )
    ],
  );
}
