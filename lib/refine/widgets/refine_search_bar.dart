import 'package:azafilters/constant.dart';
import 'package:azafilters/utility.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

TextFormField refineSearchBar(
    {required String hint,
    bool sufixIcon = true,
    TextEditingController? controller,
    void Function(String values)? onChanged,
    void Function()? onClearSearch}) {
  return TextFormField(
    controller: controller,
    onChanged: onChanged,
    decoration: InputDecoration(
      enabled: true,
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(4),
        borderSide: const BorderSide(color: greyScale70, width: 1),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(4),
        borderSide: const BorderSide(color: greyScale70, width: 1),
      ),
      hintText: hint,
      hintStyle: text300.copyWith(fontSize: 14, color: greyScale80),
      contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      suffixIcon: sufixIcon
          ? ((controller?.text.isEmpty ?? true)
              ? Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: InkWell(
                    onTap: () {},
                    child: SvgPicture.asset("assets/Search.svg"),
                  ),
                )
              : Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: InkWell(
                    onTap: onClearSearch,
                    child: Text(
                      "Clear",
                      style: text400.copyWith(fontSize: 14, color: greyScale60),
                    ),
                  ),
                ))
          : const SizedBox.shrink(),
    ),
  );
}
