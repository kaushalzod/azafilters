import 'package:azafilters/constant.dart';
import 'package:azafilters/helperWidgets/appbar_widget.dart';
import 'package:azafilters/provider/refine_provider.dart';
import 'package:azafilters/refine/widgets/refine_badge_widget.dart';
import 'package:azafilters/refine/widgets/refine_checkbox_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RefineDeliveryPage extends StatelessWidget {
  final String title = "Delivery Time";
  const RefineDeliveryPage({super.key});

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
              padding: value.selectedDeliveryFilters.isNotEmpty
                  ? const EdgeInsets.symmetric(horizontal: 16)
                      .add(const EdgeInsets.only(top: 8, bottom: 16))
                  : null,
              child: Column(
                children: [
                  // refineSearchBar(hint: "Search $title"),
                  if (value.selectedDeliveryFilters.isNotEmpty)
                    Container(
                      margin: const EdgeInsets.only(top: 16),
                      height: 30,
                      child: ListView.builder(
                        physics: const ClampingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemCount: value.selectedDeliveryFilters.length,
                        itemBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: RefineBadgeWidget(
                              title:
                                  value.selectedDeliveryFilters[index].name ??
                                      '',
                              onTap: () {
                                value.deliveryFindAndRemove(
                                  index: index,
                                  deliveryName: value
                                          .selectedDeliveryFilters[index]
                                          .name ??
                                      '',
                                  mainCatId: value
                                          .selectedDeliveryFilters[index]
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
                  itemCount: value.getDeliveryItemCount(),
                  itemBuilder: (context, index) {
                    return _deliveryNameBox(index: index, value: value);
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

Widget _deliveryNameBox({required int index, required RefineProvider value}) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 12),
    child: RefineCheckboxWidget(
      onChanged: (values) {
        value.setDeliverySelection(index: index);
      },
      value: value.getDeliverySelection(index: index),
      label: value.getDeliveryName(index: index),
    ),
  );
}
