import 'package:azafilters/constant.dart';
import 'package:azafilters/helperWidgets/appbar_widget.dart';
import 'package:azafilters/provider/refine_provider.dart';
import 'package:azafilters/refine/widgets/refine_badge_widget.dart';
import 'package:azafilters/refine/widgets/refine_checkbox_widget.dart';
import 'package:azafilters/refine/widgets/refine_search_bar.dart';
import 'package:azafilters/utility.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RefineDesignerPage extends StatelessWidget {
  final String title = "Designer";
  const RefineDesignerPage({super.key});

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
                Consumer<RefineProvider>(builder: (context, value, child) {
                  if (value.selectedDesignerFilters.isNotEmpty) {
                    return Container(
                      margin: const EdgeInsets.only(top: 16),
                      height: 30,
                      child: ListView.builder(
                        physics: const ClampingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemCount: value.selectedDesignerFilters.length,
                        itemBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: RefineBadgeWidget(
                              title:
                                  value.selectedDesignerFilters[index].name ??
                                      '',
                              onTap: () {
                                value.designerFindAndRemove(
                                  index: index,
                                  mainCatId: value
                                          .selectedDesignerFilters[index]
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
                })
              ],
            ),
          ),
          Expanded(
            child: Ink(
              padding: const EdgeInsets.only(top: 12),
              color: greyScale98,
              child: Consumer<RefineProvider>(builder: (context, value, child) {
                return ListView.builder(
                  itemCount: value.getDesignerItemCount(),
                  itemBuilder: (context, index) {
                    if (value.getAlphabetNameLogic(index: index)) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: Text(
                              value.getDesignerName(index: index)[0] ?? '',
                              style: text500.copyWith(
                                  fontSize: 16, color: greyScale60),
                            ),
                          ),
                          _designerNameBox(index: index, value: value)
                        ],
                      );
                    } else {
                      return _designerNameBox(index: index, value: value);
                    }
                  },
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}

Widget _designerNameBox({required int index, required RefineProvider value}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 4),
    child: RefineCheckboxWidget(
        onChanged: (values) {
          value.setDesignerSelection(index: index);
        },
        value: value.getDesignerSelection(index: index),
        label: value.getDesignerName(index: index)),
  );
}
