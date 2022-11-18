import 'package:azafilters/constant.dart';
import 'package:azafilters/utility.dart';
import 'package:flutter/material.dart';

class RefineTabtileWidget extends StatelessWidget {
  final bool isActive;
  final String name;
  final void Function()? onTap;
  const RefineTabtileWidget(
      {super.key, required this.name, required this.isActive, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
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
        child: Text(
          name,
          style: isActive ? text500.copyWith(color: azaMain) : text400,
        ),
      ),
    );
  }
}
