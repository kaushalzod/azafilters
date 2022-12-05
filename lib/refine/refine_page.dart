import 'package:azafilters/constant.dart';
import 'package:azafilters/provider/refine_provider.dart';
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
          physics: const ClampingScrollPhysics(),
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
                label: value.filterData[index].name ?? '',
                selectedCount: value.filterData[index].selectedCount ?? 0,
                dataModel: value.filterData[index].list ?? [],
                onTap: () {
                  value.setMainCatSelected = 0;
                  value.setSubCatSelected = 0;
                  value.setClickIndex = index;
                  routePushTo(context,
                      isSlide: true,
                      route: value.routeNavigator(
                        value.filterData[index].name ?? '',
                      ));
                },
              )
          ],
        ),
      ),
    );
  }
}
