import 'package:azafilters/constant.dart';
import 'package:azafilters/helperWidgets/appbar_widget.dart';
import 'package:azafilters/provider/refine_provider.dart';
import 'package:azafilters/refine/widgets/refine_checkbox_widget.dart';
import 'package:azafilters/refine/widgets/refine_search_bar.dart';
import 'package:azafilters/refine/widgets/refine_subcat_tile.dart';
import 'package:azafilters/refine/widgets/refine_tabtile_widget.dart';
import 'package:azafilters/utility.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RefineSubFiltersPage extends StatelessWidget {
  final String title;
  // final int clickIndex;

  const RefineSubFiltersPage({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greyScale100,
      appBar: appbarWidget(title: title, icon: false),
      body: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
                border: Border(bottom: BorderSide(color: greyScale90))),
            padding: const EdgeInsets.symmetric(horizontal: 16)
                .add(const EdgeInsets.only(top: 8, bottom: 16)),
            child: refineSearchBar(hint: "Search $title"),
          ),
//! Main Categories Tab
          ViewType.threeLevel == getViewType(title)
              ? Consumer<RefineProvider>(
                  builder: (context, value, child) => SizedBox(
                    height: 40,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount:
                          value.filterData[value.clickIndex].list?.length,
                      itemBuilder: (context, index) => RefineTabtileWidget(
                        onTap: () {
                          value.setMainCatSelected = index;
                        },
                        isActive: index == value.mainCatSelected,
                        name: (value.filterData[value.clickIndex].list ??
                                    [])[index]
                                .name ??
                            '',
                      ),
                    ),
                  ),
                )
              : const SizedBox.shrink(),
// //! Main and Sub categories Selections
          Expanded(
            child: Consumer<RefineProvider>(
              builder: (context, value, child) => Row(
                children: [
                  ViewType.twoLevel == getViewType(title) ||
                          ViewType.threeLevel == getViewType(title)
                      ? SizedBox(
                          width: MediaQuery.of(context).size.width * .42,
                          child: ListView.builder(
                            itemBuilder: (context, index) {
                              return RefineSubCatTileWidget(
                                  onTap: (v) {
                                    value.setSubCatSelected = index;
                                  },
                                  title: ViewType.twoLevel == getViewType(title)
                                      ? (value.filterData[value.clickIndex]
                                              .list?[index].name ??
                                          '')
                                      : (value
                                              .filterData[value.clickIndex]
                                              .list?[value.mainCatSelected]
                                              .list?[index]
                                              .name) ??
                                          '',
                                  isActive: value.subCatSelected == index);
                            },
                            itemCount: ViewType.twoLevel == getViewType(title)
                                ? value
                                    .filterData[value.clickIndex].list?.length
                                : value.filterData[value.clickIndex]
                                    .list?[value.mainCatSelected].list?.length,
                          ),
                        )
                      : const SizedBox.shrink(),

//! viewport Widget for checkbox
                  Ink(
                    width: getViewType(title) == ViewType.oneLevel
                        ? MediaQuery.of(context).size.width
                        : MediaQuery.of(context).size.width * .58,
                    padding: EdgeInsets.only(
                        top: getViewType(title) == ViewType.oneLevel ? 12 : 0),
                    color: greyScale98,
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        if (title.contains("Designer")) {
                          if ((index != 0 &&
                                  value.filterData[value.clickIndex]
                                          .list?[index].name?[0] !=
                                      value.filterData[value.clickIndex]
                                          .list?[index - 1].name?[0]) ||
                              index == 0) {
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                title == "Designers"
                                    ? Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 16),
                                        child: Text(
                                          value.filterData[value.clickIndex]
                                                  .list?[index].name?[0] ??
                                              '',
                                          style: text500.copyWith(
                                              fontSize: 16, color: greyScale60),
                                        ),
                                      )
                                    : const SizedBox.shrink(),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: getViewType(title) ==
                                              ViewType.oneLevel
                                          ? 4
                                          : 0),
                                  child: RefineCheckboxWidget(
                                      onChanged: (value) {},
                                      value: false,
                                      label: value.filterData[value.clickIndex]
                                              .list?[index].name ??
                                          ''),
                                ),
                              ],
                            );
                          } else {
                            return Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 4),
                              child: RefineCheckboxWidget(
                                  onChanged: (value) {},
                                  value: false,
                                  label: value.filterData[value.clickIndex]
                                          .list?[index].name ??
                                      ''),
                            );
                          }
                        } else {
                          return Padding(
                            padding: title == "Color"
                                ? const EdgeInsets.symmetric(
                                    vertical: 2, horizontal: 12)
                                : const EdgeInsets.all(0),
                            child: RefineCheckboxWidget(
                                onChanged: (values) {
                                  getViewType(title) == ViewType.threeLevel
                                      ? (value
                                          .filterData[value.clickIndex]
                                          .list?[value.mainCatSelected]
                                          .list?[value.subCatSelected]
                                          .list?[index]
                                          .selected = !(value
                                              .filterData[value.clickIndex]
                                              .list?[value.mainCatSelected]
                                              .list?[value.subCatSelected]
                                              .list?[index]
                                              .selected ??
                                          false))
                                      : getViewType(title) == ViewType.twoLevel
                                          ? (value
                                              .filterData[value.clickIndex]
                                              .list?[value.subCatSelected]
                                              .list?[index]
                                              .selected = !(value
                                                  .filterData[value.clickIndex]
                                                  .list?[value.subCatSelected]
                                                  .list?[index]
                                                  .selected ??
                                              false))
                                          : (value.filterData[value.clickIndex].list?[index].selected = !(value
                                                  .filterData[value.clickIndex]
                                                  .list?[index]
                                                  .selected ??
                                              false));
                                },
                                value: false,
                                isColor: title == "Color",
                                colorCode: getViewType(title) ==
                                        ViewType.threeLevel
                                    ? (value
                                        .filterData[value.clickIndex]
                                        .list?[value.mainCatSelected]
                                        .list?[value.subCatSelected]
                                        .list?[index]
                                        .colorCode)
                                    : getViewType(title) == ViewType.twoLevel
                                        ? (value
                                            .filterData[value.clickIndex]
                                            .list?[value.subCatSelected]
                                            .list?[index]
                                            .colorCode)
                                        : (value.filterData[value.clickIndex]
                                            .list?[index].colorCode),
                                label: getViewType(title) == ViewType.threeLevel
                                    ? (value
                                        .filterData[value.clickIndex]
                                        .list?[value.mainCatSelected]
                                        .list?[value.subCatSelected]
                                        .list?[index]
                                        .name)
                                    : getViewType(title) == ViewType.twoLevel
                                        ? (value
                                            .filterData[value.clickIndex]
                                            .list?[value.subCatSelected]
                                            .list?[index]
                                            .name)
                                        : (value.filterData[value.clickIndex]
                                            .list?[index].name)),
                          );
                        }
                      },
                      itemCount: getViewType(title) == ViewType.threeLevel
                          ? (value
                                  .filterData[value.clickIndex]
                                  .list?[value.mainCatSelected]
                                  .list?[value.subCatSelected]
                                  .list
                                  ?.length ??
                              0)
                          : getViewType(title) == ViewType.twoLevel
                              ? (value
                                      .filterData[value.clickIndex]
                                      .list?[value.subCatSelected]
                                      .list
                                      ?.length ??
                                  0)
                              : value.filterData[value.clickIndex].list
                                      ?.length ??
                                  0,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

enum ViewType { threeLevel, twoLevel, oneLevel, price }

ViewType getViewType(String name) {
  switch (name.toLowerCase()) {
    case "categories":
      return ViewType.threeLevel;
    case "price":
      return ViewType.price;
    case "size":
      return ViewType.twoLevel;
    default:
      return ViewType.oneLevel;
    // Color, Occasion, Delivery Time, Designers
  }
}
