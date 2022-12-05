import 'package:azafilters/refine/child_pages/price_range.dart';
import 'package:azafilters/refine/child_pages/refine_category_page.dart';
import 'package:azafilters/refine/child_pages/refine_color_page.dart';
import 'package:azafilters/refine/child_pages/refine_delivery_page.dart';
import 'package:azafilters/refine/child_pages/refine_designer_page.dart';
import 'package:azafilters/refine/child_pages/refine_occasion_page.dart';
import 'package:azafilters/refine/child_pages/refine_size_page.dart';
import 'package:azafilters/refine/child_pages/refine_subfilters_page.dart';
import 'package:azafilters/refine/models/helper_model.dart';
import 'package:azafilters/utility.dart';
import 'package:flutter/material.dart';

class RefineProvider extends ChangeNotifier {
  late List<FilterModel> filterData = [];
  int sortByGroupValue = 0;
  late List sortBy;
  int clickIndex = 0;
  int mainCatSelected = 0;
  int subCatSelected = 0;
  RangeValues priceRangeValue = const RangeValues(0, 10000);

  List<FilterModel> selectedCatFilters = [];
  List<FilterModel> selectedDesignerFilters = [];
  List<FilterModel> selectedSizeFilters = [];
  List<FilterModel> selectedColorFilters = [];
  List<FilterModel> selectedDeliveryFilters = [];
  List<FilterModel> selectedOccasionFilters = [];
  List<FilterModel> selectedPriceRangeFilters = [];

//! Constructor
  RefineProvider() {
    for (var item in filterJsonData["filters"]) {
      filterData.add(FilterModel.fromJson(item));
    }
    sortBy = sortByData;
    notifyListeners();
  }

  set setFilterData(String indexes) {
    for (var i = 0; i < indexes.length; i++) {
      filterData[int.parse(indexes[0])].selected =
          !filterData[int.parse(indexes[0])].selected!;
    }
  }

  set setSortByGroupValue(int newValue) {
    sortByGroupValue = newValue;
    notifyListeners();
  }

  set setPriceRangeValue(RangeValues newValue) {
    priceRangeValue = newValue;
    notifyListeners();
  }

  set setSubCatSelected(int newValue) {
    subCatSelected = newValue;
    notifyListeners();
  }

  set setMainCatSelected(int newValue) {
    mainCatSelected = newValue;
    subCatSelected = 0;
    notifyListeners();
  }

  set setClickIndex(int index) {
    clickIndex = index;
    notifyListeners();
  }

  routeNavigator(String name) {
    switch (name.toLowerCase()) {
      case "categories":
        return const RefineCategoryPage();
      case "price":
        return RefinePriceRange(title: name);
      case "size":
        return const RefineSizePage();
      case "designers":
        return const RefineDesignerPage();
      case "color":
        return const RefineColorPage();
      case "occasion":
        return const RefineOccasionPage();
      case "delivery time":
        return const RefineDeliveryPage();
      default:
        return RefineSubFiltersPage(title: name);
      // Color, Occasion, Delivery Time, Designers
    }
  }

//!╔══════════════════════════════════════════════════════════════════╗
//!║                   Categories Filter Logics                       ║
//!╚══════════════════════════════════════════════════════════════════╝

  catFindAndRemove(
      {required int mainCatId,
      required int subCatId,
      required int subSubCatId,
      required int index}) {
    filterData[clickIndex].selectedCount =
        (filterData[clickIndex].selectedCount ?? 0) - 1;
    filterData[clickIndex]
        .list
        ?.firstWhere((element) => element.value == mainCatId)
        .selectedCount = (filterData[clickIndex]
                .list
                ?.firstWhere((element) => element.value == mainCatId)
                .selectedCount ??
            0) -
        1;
    filterData[clickIndex]
        .list
        ?.firstWhere((element) => element.value == mainCatId)
        .list
        ?.firstWhere((element) => element.value == subCatId)
        .selectedCount = (filterData[clickIndex]
                .list
                ?.firstWhere((element) => element.value == mainCatId)
                .list
                ?.firstWhere((element) => element.value == subCatId)
                .selectedCount ??
            0) -
        1;
    filterData[clickIndex]
        .list
        ?.firstWhere((element) => element.value == mainCatId)
        .list
        ?.firstWhere((element) => element.value == subCatId)
        .list
        ?.firstWhere((element) => element.value == subSubCatId)
        .selected = false;

    selectedCatFilters.removeAt(index);
    notifyListeners();
  }

  getMainCatName({required int index}) {
    return filterData[clickIndex].list?[index].name ?? '';
  }

  getMainCatSelectionCount({required int index}) {
    return filterData[clickIndex].list?[index].selectedCount ?? 0;
  }

  getMainCatItemCount() {
    return filterData[clickIndex].list?.length ?? 0;
  }

  getMainCatSelection({required int index}) {
    return filterData[clickIndex].list?[index].selected ?? false;
  }

  setMainCatSelection({required int index}) {
    filterData[clickIndex].list?[index].selected =
        !(filterData[clickIndex].list?[index].selected ?? false);
    notifyListeners();
  }

  getSubCatName({required int index}) {
    return filterData[clickIndex].list?[mainCatSelected].list?[index].name ??
        '';
  }

  getSubCatSelectedCount({required int index}) {
    return filterData[clickIndex]
            .list?[mainCatSelected]
            .list?[index]
            .selectedCount ??
        0;
  }

  getSubCatItemCount() {
    return filterData[clickIndex].list?[mainCatSelected].list?.length ?? 0;
  }

  /// This will return checkbox names to select
  getSubSubCatName({required int index}) {
    return filterData[clickIndex]
            .list?[mainCatSelected]
            .list?[subCatSelected]
            .list?[index]
            .name ??
        '';
  }

  getSubSubCatItemCount() {
    return filterData[clickIndex]
            .list?[mainCatSelected]
            .list?[subCatSelected]
            .list
            ?.length ??
        0;
  }

  getSubSubCatSelection({required int index}) {
    return filterData[clickIndex]
            .list?[mainCatSelected]
            .list?[subCatSelected]
            .list?[index]
            .selected ??
        false;
  }

  setSubSubCatSelection({required int index}) {
    filterData[clickIndex]
        .list?[mainCatSelected]
        .list?[subCatSelected]
        .list?[index]
        .selected = !(filterData[clickIndex]
            .list?[mainCatSelected]
            .list?[subCatSelected]
            .list?[index]
            .selected ??
        false);

    if (filterData[clickIndex]
            .list?[mainCatSelected]
            .list?[subCatSelected]
            .list?[index]
            .selected ??
        false) {
      filterData[clickIndex]
          .list?[mainCatSelected]
          .list?[subCatSelected]
          .selectedCount = (filterData[clickIndex]
                  .list?[mainCatSelected]
                  .list?[subCatSelected]
                  .selectedCount ??
              0) +
          1;
      filterData[clickIndex].list?[mainCatSelected].selectedCount =
          (filterData[clickIndex].list?[mainCatSelected].selectedCount ?? 0) +
              1;

      filterData[clickIndex].selectedCount =
          (filterData[clickIndex].selectedCount ?? 0) + 1;

      selectedCatFilters.insert(
          0,
          FilterModel(
              value: filterData[clickIndex].list?[mainCatSelected].value,
              name: filterData[clickIndex].list?[mainCatSelected].name,
              list: [
                FilterModel(
                    value: filterData[clickIndex]
                        .list?[mainCatSelected]
                        .list?[subCatSelected]
                        .value,
                    name: filterData[clickIndex]
                        .list?[mainCatSelected]
                        .list?[subCatSelected]
                        .name,
                    list: [
                      FilterModel(
                          name: filterData[clickIndex]
                              .list?[mainCatSelected]
                              .list?[subCatSelected]
                              .list?[index]
                              .name,
                          value: filterData[clickIndex]
                              .list?[mainCatSelected]
                              .list?[subCatSelected]
                              .list?[index]
                              .value)
                    ])
              ]));
    } else {
      filterData[clickIndex]
          .list?[mainCatSelected]
          .list?[subCatSelected]
          .selectedCount = (filterData[clickIndex]
                  .list?[mainCatSelected]
                  .list?[subCatSelected]
                  .selectedCount ??
              0) -
          1;
      filterData[clickIndex].list?[mainCatSelected].selectedCount =
          (filterData[clickIndex].list?[mainCatSelected].selectedCount ?? 0) -
              1;

      filterData[clickIndex].selectedCount =
          (filterData[clickIndex].selectedCount ?? 0) - 1;

      selectedCatFilters.removeWhere((element) =>
          element.list?[0].list?[0].name ==
          filterData[clickIndex]
              .list?[mainCatSelected]
              .list?[subCatSelected]
              .list?[index]
              .name);
    }
    warninglog(selectedCatFilters);
    notifyListeners();
  }

//!╔══════════════════════════════════════════════════════════════════╗
//!║                       Colors Filter Logics                       ║
//!╚══════════════════════════════════════════════════════════════════╝

  getColorCode({required int index}) {
    return filterData[clickIndex].list?[index].colorCode;
  }

  getColorName({required int index}) {
    return filterData[clickIndex].list?[index].name ?? '';
  }

  getColorItemCount() {
    return filterData[clickIndex].list?.length ?? 0;
  }

  getColorSelection({required int index}) {
    return filterData[clickIndex].list?[index].selected ?? false;
  }

  setColorSelection({required int index}) {
    filterData[clickIndex].list?[index].selected =
        !(filterData[clickIndex].list?[index].selected ?? false);

    if (filterData[clickIndex].list?[index].selected ?? false) {
      filterData[clickIndex].list?[index].selectedCount =
          (filterData[clickIndex].list?[index].selectedCount ?? 0) + 1;

      filterData[clickIndex].selectedCount =
          (filterData[clickIndex].selectedCount ?? 0) + 1;

      selectedColorFilters.insert(
          0,
          FilterModel(
            value: filterData[clickIndex].list?[index].value,
            name: filterData[clickIndex].list?[index].name,
          ));
    } else {
      filterData[clickIndex].list?[index].selectedCount =
          (filterData[clickIndex].list?[index].selectedCount ?? 0) - 1;
      filterData[clickIndex].selectedCount =
          (filterData[clickIndex].selectedCount ?? 0) - 1;
      selectedColorFilters.removeWhere((element) =>
          element.name == filterData[clickIndex].list?[index].name);
    }
    notifyListeners();
  }

  colorFindAndRemove({required int mainCatId, required int index}) {
    filterData[clickIndex].selectedCount =
        (filterData[clickIndex].selectedCount ?? 0) - 1;

    filterData[clickIndex]
        .list
        ?.firstWhere((element) => element.value == mainCatId)
        .selected = false;

    selectedColorFilters.removeAt(index);
    notifyListeners();
  }

//!╔══════════════════════════════════════════════════════════════════╗
//!║                        Sizes Filter Logics                       ║
//!╚══════════════════════════════════════════════════════════════════╝

  getSizeRootName({required int index}) {
    return filterData[clickIndex].list?[index].name ?? '';
  }

  getSizeRootSelectedCount({required int index}) {
    return filterData[clickIndex].list?[index].selectedCount ?? '';
  }

  getSizeRootItemCount() {
    return filterData[clickIndex].list?.length ?? '';
  }

  getSizeCheckboxName({required int index}) {
    return filterData[clickIndex].list?[mainCatSelected].list?[index].name ??
        '';
  }

  getSizeCheckboxItemCount() {
    return filterData[clickIndex].list?[mainCatSelected].list?.length ?? 0;
  }

  getSizeCheckboxValue({required int index}) {
    return filterData[clickIndex]
            .list?[mainCatSelected]
            .list?[index]
            .selected ??
        false;
  }

  sizeFindAndRemove(
      {required int mainCatId, required int subCatId, required int index}) {
    filterData[clickIndex]
        .list
        ?.firstWhere((element) => element.value == mainCatId)
        .selectedCount = (filterData[clickIndex]
                .list
                ?.firstWhere((element) => element.value == mainCatId)
                .selectedCount ??
            0) -
        1;

    filterData[clickIndex]
        .list
        ?.firstWhere((element) => element.value == mainCatId)
        .list
        ?.firstWhere((element) => element.value == subCatId)
        .selected = false;

    selectedSizeFilters.removeAt(index);
    notifyListeners();
  }

  setSizeCheckboxValue({required int index}) {
    filterData[clickIndex].list?[mainCatSelected].list?[index].selected =
        !(filterData[clickIndex].list?[mainCatSelected].list?[index].selected ??
            false);
    if (filterData[clickIndex].list?[mainCatSelected].list?[index].selected ??
        false) {
      filterData[clickIndex].list?[mainCatSelected].selectedCount =
          (filterData[clickIndex].list?[mainCatSelected].selectedCount ?? 0) +
              1;
      filterData[clickIndex].selectedCount =
          (filterData[clickIndex].selectedCount ?? 0) + 1;

      selectedSizeFilters.insert(
          0,
          FilterModel(
              value: filterData[clickIndex].list?[mainCatSelected].value,
              name: filterData[clickIndex].list?[mainCatSelected].name,
              list: [
                FilterModel(
                  value: filterData[clickIndex]
                      .list?[mainCatSelected]
                      .list?[index]
                      .value,
                  name: filterData[clickIndex]
                      .list?[mainCatSelected]
                      .list?[index]
                      .name,
                )
              ]));
    } else {
      filterData[clickIndex].list?[mainCatSelected].selectedCount =
          (filterData[clickIndex].list?[mainCatSelected].selectedCount ?? 0) -
              1;
      filterData[clickIndex].selectedCount =
          (filterData[clickIndex].selectedCount ?? 0) - 1;

      selectedSizeFilters.removeWhere((element) =>
          element.list?[0].name ==
          filterData[clickIndex].list?[mainCatSelected].list?[index].name);
    }
    notifyListeners();
  }

//!╔══════════════════════════════════════════════════════════════════╗
//!║                    Designers Filter Logics                       ║
//!╚══════════════════════════════════════════════════════════════════╝

  getAlphabetNameLogic({required int index}) {
    return (index != 0 &&
            filterData[clickIndex].list?[index].name?[0] !=
                filterData[clickIndex].list?[index - 1].name?[0]) ||
        index == 0;
  }

  getDesignerName({required int index}) {
    return filterData[clickIndex].list?[index].name ?? '';
  }

  getDesignerItemCount() {
    return filterData[clickIndex].list?.length ?? 0;
  }

  getDesignerSelection({required int index}) {
    return filterData[clickIndex].list?[index].selected ?? false;
  }

  setDesignerSelection({required int index}) {
    filterData[clickIndex].list?[index].selected =
        !(filterData[clickIndex].list?[index].selected ?? false);

    if (filterData[clickIndex].list?[index].selected ?? false) {
      filterData[clickIndex].list?[index].selectedCount =
          (filterData[clickIndex].list?[index].selectedCount ?? 0) + 1;

      filterData[clickIndex].selectedCount =
          (filterData[clickIndex].selectedCount ?? 0) + 1;

      selectedDesignerFilters.insert(
          0,
          FilterModel(
            value: filterData[clickIndex].list?[index].value,
            name: filterData[clickIndex].list?[index].name,
          ));
    } else {
      filterData[clickIndex].list?[index].selectedCount =
          (filterData[clickIndex].list?[index].selectedCount ?? 0) - 1;
      filterData[clickIndex].selectedCount =
          (filterData[clickIndex].selectedCount ?? 0) - 1;
      selectedDesignerFilters.removeWhere((element) =>
          element.name == filterData[clickIndex].list?[index].name);
    }
    notifyListeners();
  }

  designerFindAndRemove({required int mainCatId, required int index}) {
    filterData[clickIndex].selectedCount =
        (filterData[clickIndex].selectedCount ?? 0) - 1;

    filterData[clickIndex]
        .list
        ?.firstWhere((element) => element.value == mainCatId)
        .selected = false;

    selectedDesignerFilters.removeAt(index);
    notifyListeners();
  }
//!╔══════════════════════════════════════════════════════════════════╗
//!║                Estimated Delivery Filter Logics                  ║
//!╚══════════════════════════════════════════════════════════════════╝

  getDeliveryName({required int index}) {
    return filterData[clickIndex].list?[index].name ?? '';
  }

  getDeliveryItemCount() {
    return filterData[clickIndex].list?.length ?? 0;
  }

  getDeliverySelection({required int index}) {
    return filterData[clickIndex].list?[index].selected ?? false;
  }

  setDeliverySelection({required int index}) {
    filterData[clickIndex].list?[index].selected =
        !(filterData[clickIndex].list?[index].selected ?? false);

    if (filterData[clickIndex].list?[index].selected ?? false) {
      filterData[clickIndex].list?[index].selectedCount =
          (filterData[clickIndex].list?[index].selectedCount ?? 0) + 1;

      filterData[clickIndex].selectedCount =
          (filterData[clickIndex].selectedCount ?? 0) + 1;

      selectedDeliveryFilters.insert(
          0,
          FilterModel(
            value: filterData[clickIndex].list?[index].value,
            name: filterData[clickIndex].list?[index].name,
          ));
    } else {
      filterData[clickIndex].list?[index].selectedCount =
          (filterData[clickIndex].list?[index].selectedCount ?? 0) - 1;
      filterData[clickIndex].selectedCount =
          (filterData[clickIndex].selectedCount ?? 0) - 1;
      selectedDeliveryFilters.removeWhere((element) =>
          element.name == filterData[clickIndex].list?[index].name);
    }
    notifyListeners();
  }

  deliveryFindAndRemove({required int mainCatId, required int index}) {
    filterData[clickIndex].selectedCount =
        (filterData[clickIndex].selectedCount ?? 0) - 1;

    filterData[clickIndex]
        .list
        ?.firstWhere((element) => element.value == mainCatId)
        .selected = false;

    selectedDeliveryFilters.removeAt(index);
    notifyListeners();
  }

//!╔══════════════════════════════════════════════════════════════════╗
//!║                   Occassions Filter Logics                       ║
//!╚══════════════════════════════════════════════════════════════════╝

  getOccasionName({required int index}) {
    return filterData[clickIndex].list?[index].name ?? '';
  }

  getOccasionItemCount() {
    return filterData[clickIndex].list?.length ?? 0;
  }

  getOccasionSelection({required int index}) {
    return filterData[clickIndex].list?[index].selected ?? false;
  }

  setOccasionSelection({required int index}) {
    filterData[clickIndex].list?[index].selected =
        !(filterData[clickIndex].list?[index].selected ?? false);

    if (filterData[clickIndex].list?[index].selected ?? false) {
      filterData[clickIndex].list?[index].selectedCount =
          (filterData[clickIndex].list?[index].selectedCount ?? 0) + 1;

      filterData[clickIndex].selectedCount =
          (filterData[clickIndex].selectedCount ?? 0) + 1;

      selectedOccasionFilters.insert(
          0,
          FilterModel(
            value: filterData[clickIndex].list?[index].value,
            name: filterData[clickIndex].list?[index].name,
          ));
    } else {
      filterData[clickIndex].list?[index].selectedCount =
          (filterData[clickIndex].list?[index].selectedCount ?? 0) - 1;
      filterData[clickIndex].selectedCount =
          (filterData[clickIndex].selectedCount ?? 0) - 1;
      selectedOccasionFilters.removeWhere((element) =>
          element.name == filterData[clickIndex].list?[index].name);
    }
    notifyListeners();
  }

  occasionFindAndRemove({required int mainCatId, required int index}) {
    filterData[clickIndex].selectedCount =
        (filterData[clickIndex].selectedCount ?? 0) - 1;

    filterData[clickIndex]
        .list
        ?.firstWhere((element) => element.value == mainCatId)
        .selected = false;

    selectedOccasionFilters.removeAt(index);
    notifyListeners();
  }

//!╔══════════════════════════════════════════════════════════════════╗
//!║                   Occassions Filter Logics                       ║
//!╚══════════════════════════════════════════════════════════════════╝

  getOnLevelCheckboxName({required int index}) {
    return filterData[clickIndex].list?[index].name ?? '';
  }

  getOneLevelCheckboxItemCount() {
    return filterData[clickIndex].list?.length ?? 0;
  }

  getOneLevelCheckboxSelection({required int index}) {
    return filterData[clickIndex].list?[index].selected ?? false;
  }

  setOneLevelCheckboxSelection({required int index}) {
    filterData[clickIndex].list?[index].selected =
        !(filterData[clickIndex].list?[index].selected ?? false);

    if (filterData[clickIndex].list?[index].selected ?? false) {
      filterData[clickIndex].list?[index].selectedCount =
          (filterData[clickIndex].list?[index].selectedCount ?? 0) + 1;

      filterData[clickIndex].selectedCount =
          (filterData[clickIndex].selectedCount ?? 0) + 1;
    } else {
      filterData[clickIndex].list?[index].selectedCount =
          (filterData[clickIndex].list?[index].selectedCount ?? 0) - 1;
      filterData[clickIndex].selectedCount =
          (filterData[clickIndex].selectedCount ?? 0) - 1;
    }
    notifyListeners();
  }
}
