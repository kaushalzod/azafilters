import 'package:azafilters/constant.dart';
import 'package:azafilters/utility.dart';
import 'package:flutter/material.dart';

class RefineSubCatTileWidget extends StatelessWidget {
  final String title;
  final bool isActive;
  final int selectionCount;
  final void Function(dynamic value) onTap;
  const RefineSubCatTileWidget(
      {super.key,
      required this.title,
      required this.selectionCount,
      required this.isActive,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(isActive),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        color: isActive ? greyScale90 : Colors.transparent,
        height: 40,
        alignment: Alignment.centerLeft,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                title,
                style:
                    isActive ? text400.copyWith(color: greyScale10) : text400,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            if (selectionCount != 0)
              Text(
                "$selectionCount",
                style:
                    isActive ? text400.copyWith(color: greyScale10) : text400,
              )
          ],
        ),
      ),
    );
  }
}
