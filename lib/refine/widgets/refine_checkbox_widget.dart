import 'package:azafilters/constant.dart';
import 'package:azafilters/utility.dart';
import 'package:flutter/material.dart';

class RefineCheckboxWidget extends StatelessWidget {
  final dynamic value;

  final void Function(dynamic value) onChanged;
  final String? label;
  final TextStyle? textStyle;
  final bool isColor;
  final String? colorCode;
  const RefineCheckboxWidget(
      {super.key,
      required this.onChanged,
      this.isColor = false,
      this.colorCode,
      this.textStyle,
      required this.value,
      required this.label});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onChanged(value),
      child: Container(
        decoration: BoxDecoration(
          color: isColor && value ? azaVeryLightBG : Colors.transparent,
          border: Border.all(
              color: isColor && value ? azaMain : Colors.transparent),
          borderRadius: BorderRadius.circular(4),
        ),
        padding: const EdgeInsets.only(left: 12),
        height: 40,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            if (!isColor) customCheckbox(isSelected: value, onCheck: onChanged),
            if (isColor) colorBox(colorCode ?? "FFFFFF"),
            const SizedBox(width: 8),
            label != null
                ? Expanded(
                    child: Text(
                      label ?? '',
                      style: textStyle ??
                          text400.copyWith(
                              color: greyScale50,
                              overflow: TextOverflow.ellipsis),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  )
                : const SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}
// 1652 selection count display logic as its deep down filtration
// 1662 discuss with raj and vishal

Widget colorBox(String? colorCode) {
  return Container(
    height: 14,
    width: 14,
    decoration: BoxDecoration(
      color: colorCode != null
          ? Color(int.parse("0xFF${colorCode.replaceAll('#', '')}"))
          : Colors.transparent,
      borderRadius: BorderRadius.circular(2),
      border: Border.all(
        width: 1,
        color: greyScale90,
      ),
    ),
  );
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
