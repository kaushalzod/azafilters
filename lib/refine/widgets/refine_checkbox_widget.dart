import 'package:azafilters/constant.dart';
import 'package:azafilters/utility.dart';
import 'package:flutter/material.dart';

class RefineCheckboxWidget extends StatelessWidget {
  final dynamic value;

  final void Function(dynamic value) onChanged;
  final String? label;
  final TextStyle? textStyle;
  const RefineCheckboxWidget(
      {super.key,
      required this.onChanged,
      this.textStyle,
      required this.value,
      required this.label});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onChanged(value),
      child: Container(
        padding: const EdgeInsets.only(left: 12),
        height: 40,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            customCheckbox(isSelected: value, onCheck: onChanged),
            const SizedBox(width: 8),
            label != null
                ? Text(
                    label ?? '',
                    style: textStyle ?? text400.copyWith(color: greyScale50),
                  )
                : const SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}

Widget customCheckbox(
    {required void Function(dynamic value) onCheck,
    bool isSelected = false,
    Color color = azaMainLight,
    Color localBorderColor = greyScale70}) {
  return InkWell(
    onTap: () => onCheck(isSelected),
    child: Container(
      height: 14,
      width: 14,
      decoration: BoxDecoration(
        color: isSelected ? color : Colors.white,
        borderRadius: BorderRadius.circular(2),
        border: Border.all(
          color: isSelected ? Colors.transparent : localBorderColor,
        ),
      ),
      child: const Icon(
        Icons.done_rounded,
        color: Colors.white,
        size: 10,
      ),
    ),
  );
}
