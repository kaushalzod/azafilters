import 'package:azafilters/constant.dart';
import 'package:azafilters/helperWidgets/appbar_widget.dart';
import 'package:azafilters/provider/refine_provider.dart';
import 'package:azafilters/refine/widgets/refine_badge_widget.dart';
import 'package:azafilters/refine/widgets/refine_checkbox_widget.dart';
import 'package:azafilters/refine/widgets/refine_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RefineColorPage extends StatelessWidget {
  final String title = "Color";
  const RefineColorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarWidget(title: title),
      body: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(color: greyScale90),
              ),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 16)
                .add(const EdgeInsets.only(top: 8, bottom: 16)),
            child: Column(
              children: [
                refineSearchBar(hint: "Search $title"),
                Consumer<RefineProvider>(
                  builder: (context, value, child) {
                    if (value.selectedColorFilters.isNotEmpty) {
                      return Container(
                        margin: const EdgeInsets.only(top: 16),
                        height: 30,
                        child: ListView.builder(
                          physics: const ClampingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemCount: value.selectedColorFilters.length,
                          itemBuilder: (context, index) => Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: RefineBadgeWidget(
                                title: value.selectedColorFilters[index].name ??
                                    '',
                                onTap: () {
                                  value.colorFindAndRemove(
                                    index: index,
                                    mainCatId: value.selectedColorFilters[index]
                                            .value ??
                                        0,
                                  );
                                }),
                          ),
                        ),
                      );
                    } else {
                      return const SizedBox.shrink();
                    }
                  },
                )
              ],
            ),
          ),
          Expanded(
            child: Ink(
              padding: const EdgeInsets.only(top: 12),
              color: greyScale98,
              child: Consumer<RefineProvider>(
                builder: (context, value, child) {
                  return ListView.builder(
                    itemCount: value.getColorItemCount(),
                    itemBuilder: (context, index) {
                      return _colorNameBox(index: index, value: value);
                    },
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget _colorNameBox({required int index, required RefineProvider value}) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 12),
    child: RefineCheckboxWidget(
      isColor: true,
      onChanged: (values) {
        value.setColorSelection(index: index);
      },
      value: value.getColorSelection(index: index),
      label: value.getColorName(index: index),
      colorCode: value.getColorCode(index: index),
    ),
  );
}
