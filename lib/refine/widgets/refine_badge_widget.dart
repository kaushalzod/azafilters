import 'package:azafilters/constant.dart';
import 'package:azafilters/utility.dart';
import 'package:flutter/material.dart';

class RefineBadgeWidget extends StatelessWidget {
  final String title;
  final void Function() onTap;
  const RefineBadgeWidget(
      {super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          border: Border.all(color: greyScale90)),
      height: 30,
      child: Row(
        children: [
          const SizedBox(width: 8),
          Text(
            title,
            style: text400.copyWith(fontSize: 11),
          ),
          const SizedBox(width: 4),
          InkWell(
            onTap: onTap,
            child: const SizedBox(
              height: 20,
              width: 20,
              child: Icon(
                Icons.close_rounded,
                size: 12,
              ),
            ),
          ),
          const SizedBox(width: 4),
        ],
      ),
    );
  }
}
