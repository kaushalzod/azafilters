import 'package:azafilters/constant.dart';
import 'package:azafilters/utility.dart';
import 'package:flutter/material.dart';

class RefineRadioWidget extends StatelessWidget {
  final dynamic value;
  final dynamic groupValue;
  final void Function(dynamic value) onChanged;
  final String? label;
  final TextStyle? textStyle;
  const RefineRadioWidget(
      {super.key,
      required this.groupValue,
      required this.onChanged,
      this.textStyle,
      required this.value,
      this.label});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onChanged(value),
      splashFactory: NoSplash.splashFactory,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
        child: Row(
          children: [
            Radio(
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
              value: value,
              groupValue: groupValue,
              onChanged: onChanged,
              fillColor: MaterialStateProperty.resolveWith<Color>(
                  (Set<MaterialState> states) {
                if (states.contains(MaterialState.selected)) {
                  return azaMainLight;
                }
                return greyScale70;
              }),
              activeColor: azaMainLight,
            ),
            const SizedBox(width: 8),
            label != null
                ? Text(
                    label ?? '',
                    style: textStyle ?? text400.copyWith(fontSize: 14),
                  )
                : const SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}
