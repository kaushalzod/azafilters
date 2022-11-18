import 'package:azafilters/constant.dart';
import 'package:azafilters/provider/refine_provider.dart';
import 'package:azafilters/refine/refine_subfilters_page.dart';
import 'package:azafilters/refine/widgets/refine_filtertile_widget.dart';
import 'package:azafilters/refine/widgets/refine_header_widget.dart';
import 'package:azafilters/refine/widgets/refine_radio_widget.dart';
import 'package:azafilters/utility.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RefinePage extends StatelessWidget {
  const RefinePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Refine",
          style: text500.copyWith(fontSize: 14),
        ),
        titleSpacing: 16,
        automaticallyImplyLeading: false,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: InkWell(
              onTap: () {},
              child: const Padding(
                padding: EdgeInsets.all(10),
                child: Icon(
                  Icons.close,
                  size: 12,
                  color: greyScale60,
                ),
              ),
            ),
          )
        ],
      ),
      body: Consumer<RefineProvider>(
        builder: (context, value, child) => ListView(
          children: [
            const RefineHeaderWidget(header: "Sort by"),
            for (var item in value.sortBy)
              RefineRadioWidget(
                  label: item["name"],
                  groupValue: value.sortByGroupValue,
                  onChanged: (newValue) => value.setSortByGroupValue = newValue,
                  value: item["value"]),
            const SizedBox(height: 16),
            RefineHeaderWidget(
              header: "Filter by",
              ctaLabel: "Clear all",
              ctaOnTap: () {},
            ),
            for (int index = 0; index < value.filterData.length; index++)
              RefineFilterTileWidget(
                label: value.filterData[index].name,
                checked: value.filterData[index].checked,
                dataModel: value.filterData[index].subCat ?? [],
                onTap: () {
                  (value.filterData[index].subCat ?? []).isNotEmpty
                      ? routePushTo(context,
                          isSlide: true,
                          route: RefineSubFiltersPage(
                            dataModel: value.filterData[index].subCat,
                            title: value.filterData[index].name,
                            clickIndex: index,
                          ))
                      : null;
                },
              )
          ],
        ),
      ),
    );
  }
}
