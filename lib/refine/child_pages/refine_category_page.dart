import 'package:azafilters/constant.dart';
import 'package:azafilters/helperWidgets/appbar_widget.dart';
import 'package:azafilters/provider/refine_provider.dart';
import 'package:azafilters/refine/widgets/refine_badge_widget.dart';
import 'package:azafilters/refine/widgets/refine_checkbox_widget.dart';
import 'package:azafilters/refine/widgets/refine_search_bar.dart';
import 'package:azafilters/refine/widgets/refine_subcat_tile.dart';
import 'package:azafilters/refine/widgets/refine_tabtile_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RefineCategoryPage extends StatelessWidget {
  final String title = "Categories";
  const RefineCategoryPage({super.key});

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
                  if (value.selectedCatFilters.isNotEmpty) {
                    return Container(
                      margin: const EdgeInsets.only(top: 16),
                      height: 30,
                      child: ListView.builder(
                        physics: const ClampingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemCount: value.selectedCatFilters.length,
                        itemBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: RefineBadgeWidget(
                              title: value.selectedCatFilters[index].list?[0]
                                      .list?[0].name ??
                                  '',
                              onTap: () {
                                value.catFindAndRemove(
                                    index: index,
                                    mainCatId:
                                        value.selectedCatFilters[index].value ??
                                            0,
                                    subCatId: value.selectedCatFilters[index]
                                            .list?[0].value ??
                                        0,
                                    subSubCatId: value.selectedCatFilters[index]
                                            .list?[0].list?[0].value ??
                                        0);
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

//!Main Category Tabs of Root Category Tab

          Consumer<RefineProvider>(
            builder: (context, value, child) => SizedBox(
              height: 40,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                physics: const ClampingScrollPhysics(),
                itemCount: value.getMainCatItemCount(),
                itemBuilder: (context, index) => RefineTabtileWidget(
                  selectedCount: value.getMainCatSelectionCount(index: index),
                  onTap: () {
                    value.setMainCatSelected = index;
                  },
                  isActive: index == value.mainCatSelected,
                  name: value.getMainCatName(index: index),
                ),
              ),
            ),
          ),

          Consumer<RefineProvider>(
            builder: (context, value, child) => Expanded(
              child: Row(
                children: [
//! SubCategory Tabs
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .42,
                    child: ListView.builder(
                      physics: const ClampingScrollPhysics(),
                      itemBuilder: (context, index) {
                        return RefineSubCatTileWidget(
                            selectionCount:
                                value.getSubCatSelectedCount(index: index),
                            onTap: (v) {
                              value.setSubCatSelected = index;
                            },
                            title: value.getSubCatName(index: index),
                            isActive: value.subCatSelected == index);
                      },
                      itemCount: value.getSubCatItemCount(),
                    ),
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
                              value.setSubSubCatSelection(index: index);
                            },
                            value: value.getSubSubCatSelection(index: index),
                            label: value.getSubSubCatName(index: index));
                      },
                      itemCount: value.getSubSubCatItemCount(),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
