import 'package:azafilters/constant.dart';
import 'package:azafilters/helperWidgets/appbar_widget.dart';
import 'package:azafilters/provider/refine_provider.dart';
import 'package:azafilters/refine/models/helper_model.dart';
import 'package:azafilters/refine/refine_level_page.dart';
import 'package:azafilters/refine/widgets/refine_checkbox_widget.dart';
import 'package:azafilters/refine/widgets/refine_search_bar.dart';
import 'package:azafilters/refine/widgets/refine_subcat_tile.dart';
import 'package:azafilters/refine/widgets/refine_tabtile_widget.dart';
import 'package:azafilters/utility.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RefineSubFiltersPage extends StatelessWidget {
  final List<FilterModel>? dataModel;
  final String title;
  final int clickIndex;

  const RefineSubFiltersPage(
      {super.key,
      required this.dataModel,
      required this.title,
      required this.clickIndex});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greyScale100,
      appBar: appbarWidget(title: title, icon: false),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: greyScale90))),
            padding: const EdgeInsets.symmetric(horizontal: 16)
                .add(const EdgeInsets.only(top: 8, bottom: 16)),
            child: refineSearchBar(hint: title),
          ),
          Consumer<RefineProvider>(
            builder: (context, value, child) => Container(
              height: 36,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: value.filterData[clickIndex].subCat?.length,
                itemBuilder: (context, index) => RefineTabtileWidget(
                  isActive: index == value.mainCatSelected,
                  name: (value.filterData[clickIndex].subCat ?? [])[index].name,
                ),
              ),
            ),
          ),

          Expanded(
            child: Consumer<RefineProvider>(
              builder: (context, value, child) => Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .42,
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return RefineSubCatTileWidget(
                            onTap: (v) {
                              value.setSubCatSelected = index;
                            },
                            title: dataModel?[value.subCatSelected]
                                    .subCat?[index]
                                    .name ??
                                '',
                            isActive: value.subCatSelected == index);
                      },
                      itemCount: dataModel?[0].subCat?.length,
                    ),
                  ),
                  Ink(
                    width: MediaQuery.of(context).size.width * .58,
                    padding: const EdgeInsets.only(top: 12),
                    color: greyScale98,
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        if ((index != 0 &&
                                item[index][0] != item[index - 1][0]) ||
                            index == 0) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 16),
                                child: Text(
                                  item[index][0],
                                  style: text500.copyWith(
                                      fontSize: 16, color: greyScale60),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 4),
                                child: RefineCheckboxWidget(
                                    onChanged: (value) {},
                                    value: false,
                                    label: item[index]),
                              ),
                            ],
                          );
                        } else {
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 4),
                            child: RefineCheckboxWidget(
                                onChanged: (value) {},
                                value: false,
                                label: item[index]),
                          );
                        }
                      },
                      itemCount: item.length,
                    ),
                  )
                ],
              ),
            ),
          ),

          // for (int index = 0; index < (dataModel ?? []).length; index++)
          //   RefineFilterTileWidget(
          //     label: dataModel![index].name,
          //     dataModel: dataModel![index].subCat,
          //     checked: dataModel![index].checked,
          //     onTap: () {
          //       dataModel![index].subCat.isNotEmpty
          //           ? routePushTo(context,
          //               isSlide: true,
          //               route: RefineSubFiltersPage(
          //                 dataModel: dataModel![index].subCat,
          //                 name: dataModel![index].name,
          //                 clickIndex: index,
          //               ))
          //           : null;
          //     },
          //   )
        ],
      ),
    );
  }
}
