import 'package:azafilters/constant.dart';
import 'package:azafilters/utility.dart';
import 'package:flutter/material.dart';

class RefineTabtileWidget extends StatelessWidget {
  final bool isActive;
  final String name;
  final void Function()? onTap;
  final int selectedCount;
  const RefineTabtileWidget(
      {super.key,
      required this.name,
      required this.isActive,
      this.onTap,
      required this.selectedCount});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
                color: isActive ? azaMain : greyScale90,
                width: isActive ? 2 : 1),
          ),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          children: [
            Text(
              name,
              style: isActive ? text500.copyWith(color: azaMain) : text400,
            ),
            const SizedBox(width: 6),
            if (selectedCount != 0)
              Container(
                width: 18,
                height: 18,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: isActive ? azaMain : greyScale90,
                    borderRadius: BorderRadius.circular(18)),
                child: Text(
                  "$selectedCount",
                  style: isActive
                      ? text500.copyWith(color: greyScale100)
                      : text400,
                ),
              )
          ],
        ),
      ),
    );
  }
}
