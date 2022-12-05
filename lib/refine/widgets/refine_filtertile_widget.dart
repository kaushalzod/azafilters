import 'package:azafilters/constant.dart';
import 'package:azafilters/refine/models/helper_model.dart';
import 'package:azafilters/utility.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RefineFilterTileWidget extends StatelessWidget {
  final String label;
  final void Function()? onTap;
  final int selectedCount;

  final List<FilterModel> dataModel;

  const RefineFilterTileWidget(
      {super.key,
      required this.label,
      required this.selectedCount,
      this.onTap,
      required this.dataModel});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              label,
              style: text400.copyWith(fontSize: 14),
            ),
            Row(
              children: [
                if (selectedCount != 0)
                  const CircleAvatar(
                    radius: 3.5,
                    backgroundColor: greyScale60,
                  ),
                if (dataModel.isNotEmpty) const SizedBox(width: 16),
                if (dataModel.isNotEmpty || label == "Price")
                  const Icon(CupertinoIcons.chevron_right, size: 12)
              ],
            )
          ],
        ),
      ),
    );
  }
}
