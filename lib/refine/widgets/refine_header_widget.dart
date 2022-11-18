import 'package:azafilters/utility.dart';
import 'package:flutter/material.dart';

class RefineHeaderWidget extends StatelessWidget {
  final String header;
  final String? ctaLabel;
  final void Function()? ctaOnTap;
  const RefineHeaderWidget(
      {super.key, required this.header, this.ctaOnTap, this.ctaLabel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: Text(
              header,
              style: text500.copyWith(fontSize: 16),
            ),
          ),
          ctaLabel != null
              ? InkWell(
                  splashFactory: NoSplash.splashFactory,
                  onTap: ctaOnTap,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 12, horizontal: 16),
                    child: Text(
                      ctaLabel!,
                      style: text400.copyWith(fontSize: 14),
                    ),
                  ),
                )
              : const SizedBox.shrink()
        ],
      ),
    );
  }
}
