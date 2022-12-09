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
      appBar: refineAppbarWidget(title: title),
      body: Consumer<RefineProvider>(builder: (context, value, child) {
        return Column(
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
                  refineSearchBar(
                    hint: "Search $title",
                    controller: value.designerSearchTextController,
                    onChanged: (values) => value.updateSearchQuery(),
                    onClearSearch: () => value.clearDesignerController(),
                  ),
                  if (value.selectedDesignerFilters.isNotEmpty)
                    Container(
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
                                  designerName: value
                                          .selectedDesignerFilters[index]
                                          .name ??
                                      '',
                                  index: index,
                                  mainCatId: value
                                          .selectedDesignerFilters[index]
                                          .value ??
                                      0,
                                );
                              }),
                        ),
                      ),
                    )
                ],
              ),
            ),
            Expanded(
              child: Ink(
                padding: const EdgeInsets.only(top: 12),
                color: greyScale98,
                child: ListView.builder(
                  itemCount: value.getDesignerItemCount(),
                  itemBuilder: (context, index) {
                    if (value.getAlphabetNameLogic(index: index)) {
                      return value.searchForDesigner(index: index)
                          ? Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                value.designerSearchTextController.text.isEmpty
                                    ? Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 16),
                                        child: Text(
                                          value.getDesignerName(
                                                  index: index)[0] ??
                                              '',
                                          style: text500.copyWith(
                                              fontSize: 16, color: greyScale60),
                                        ),
                                      )
                                    : const SizedBox.shrink(),
                                _designerNameBox(index: index, value: value)
                              ],
                            )
                          : const SizedBox.shrink();
                    } else {
                      return value.searchForDesigner(index: index)
                          ? _designerNameBox(index: index, value: value)
                          : const SizedBox.shrink();
                    }
                  },
                ),
              ),
            ),
          ],
        );
      }),
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
