import 'package:azafilters/constant.dart';
import 'package:azafilters/helperWidgets/appbar_widget.dart';
import 'package:azafilters/provider/refine_provider.dart';
import 'package:azafilters/refine/widgets/refine_badge_widget.dart';
import 'package:azafilters/refine/widgets/refine_checkbox_widget.dart';
import 'package:azafilters/refine/widgets/refine_search_bar.dart';
import 'package:azafilters/refine/widgets/refine_subcat_tile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RefineSizePage extends StatelessWidget {
  final String title = "Size";
  const RefineSizePage({super.key});

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
                    controller: value.sizeSearchTextController,
                    onChanged: (values) => value.updateSearchQuery(),
                    onClearSearch: () => value.clearSizeController(),
                  ),
                  if (value.selectedSizeFilters.isNotEmpty)
                    Container(
                      margin: const EdgeInsets.only(top: 16),
                      height: 30,
                      child: ListView.builder(
                        physics: const ClampingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemCount: value.selectedSizeFilters.length,
                        itemBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: RefineBadgeWidget(
                              title: value.selectedSizeFilters[index].list?[0]
                                      .name ??
                                  '',
                              onTap: () {
                                value.sizeFindAndRemove(
                                  index: index,
                                  sizeName: value.selectedSizeFilters[index]
                                          .list?[0].name ??
                                      '',
                                  mainCatId:
                                      value.selectedSizeFilters[index].value ??
                                          0,
                                  subCatId: value.selectedSizeFilters[index]
                                          .list?[0].value ??
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
              child: Row(
                children: [
//! SubCategory Tabs
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .417,
                    child: ListView.builder(
                      physics: const ClampingScrollPhysics(),
                      itemBuilder: (context, index) {
                        return value.searchForRootSize(index: index)
                            ? RefineSubCatTileWidget(
                                selectionCount: value.getSizeRootSelectedCount(
                                    index: index),
                                onTap: (v) {
                                  value.setMainCatSelected = index;
                                },
                                title: value.getSizeRootName(index: index),
                                isActive: value.mainCatSelected == index)
                            : const SizedBox.shrink();
                      },
                      itemCount: value.getSizeRootItemCount(),
                    ),
                  ),
                  const VerticalDivider(
                    width: 1,
                    color: greyScale90,
                    thickness: 1,
                  ),
//! SubSubCategory Checkboxes
                  Ink(
                    width: MediaQuery.of(context).size.width * .58,
                    color: greyScale98,
                    child: ListView.builder(
                      physics: const ClampingScrollPhysics(),
                      itemBuilder: (context, index) {
                        return RefineCheckboxWidget(
                            onChanged: (values) {
                              value.setSizeCheckboxValue(index: index);
                            },
                            value: value.getSizeCheckboxValue(index: index),
                            label: value.getSizeCheckboxName(index: index));
                      },
                      itemCount: value.getSizeCheckboxItemCount(),
                    ),
                  )
                ],
              ),
            )
          ],
        );
      }),
    );
  }
}
