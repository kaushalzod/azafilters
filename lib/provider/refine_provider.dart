import 'package:azafilters/refine/child_pages/price_range.dart';
import 'package:azafilters/refine/child_pages/refine_category_page.dart';
import 'package:azafilters/refine/child_pages/refine_color_page.dart';
import 'package:azafilters/refine/child_pages/refine_delivery_page.dart';
import 'package:azafilters/refine/child_pages/refine_designer_page.dart';
import 'package:azafilters/refine/child_pages/refine_occasion_page.dart';
import 'package:azafilters/refine/child_pages/refine_size_page.dart';
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
  bool isAlreadySet = false;
  bool searchIsOn = false;
  RangeValues priceRangeValue = const RangeValues(0, 10000);

  TextEditingController catSearchTextController = TextEditingController();
  TextEditingController designerSearchTextController = TextEditingController();
  TextEditingController sizeSearchTextController = TextEditingController();
  TextEditingController colorSearchTextController = TextEditingController();
  TextEditingController occasionSearchTextController = TextEditingController();

  List<FilterModel> selectedCatFilters = [];
  List<FilterModel> selectedDesignerFilters = [];
  List<FilterModel> selectedSizeFilters = [];
  List<FilterModel> selectedColorFilters = [];
  List<FilterModel> selectedDeliveryFilters = [];
  List<FilterModel> selectedOccasionFilters = [];
  List<FilterModel> selectedPriceRangeFilters = [];

  List selectedMainCat = [];
  List selectedSubCat = [];
  List selectedSubSubCat = [];
  List selectedDesigner = [];
  List selectedSize = [];
  List selectedColor = [];
  List selectedDelivery = [];
  List selectedOccasion = [];
  Map selectedPriceRange = {};

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
      // Color, Occasion, Delivery Time, Designers
    }
  }

  printAllselections() {
    warninglog({
      "MainCat": selectedMainCat,
      "subCat": selectedSubCat,
      "subSubCat": selectedSubSubCat,
      "designer": selectedDesigner,
      "size": selectedSize,
      "color": selectedColor,
      "delivery": selectedDelivery,
      "occassion": selectedOccasion,
      "priceRange": selectedPriceRange
    });
  }

//!╔══════════════════════════════════════════════════════════════════╗
//!║                   Categories Filter Logics                       ║
//!╚══════════════════════════════════════════════════════════════════╝

  catFindAndRemove({
    required int mainCatId,
    required int subCatId,
    required int subSubCatId,
    required int index,
  }) {
//! Below condition will remove names in list to send algolia
//! Starts Here

    FilterModel subSubfilterModel = filterData[clickIndex]
            .list?[mainCatSelected]
            .list?[subCatSelected]
            .list?[index] ??
        FilterModel();

    if (subSubfilterModel.value == -1) {
      selectedMainCat
          .remove(selectedCatFilters[index].name?.replaceAll("All ", ''));
    } else if (subSubfilterModel.value == -2) {
      selectedSubCat.remove(
          selectedCatFilters[index].list?[0].name?.replaceAll("All ", ''));
    } else {
      selectedSubSubCat.remove(subSubfilterModel.name);
    }
//!  Ends Here

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
    printAllselections();
    notifyListeners();
  }

  // bool searchForMainCat({required int index}) {

  //   if ((filterData[clickIndex].list?[index].name ?? '')
  //       .toLowerCase()
  //       .contains(catSearchTextController.text.toLowerCase())) {
  //     return true;
  //   } else {
  //     if ((filterData[clickIndex]
  //                 .list?[index]
  //                 .list
  //                 ?.where((element) => (element.name ?? '')
  //                     .toLowerCase()
  //                     .contains(catSearchTextController.text.toLowerCase()))
  //                 .toList()
  //                 .length ??
  //             0) >
  //         0) {
  //       return true;
  //     } else {}
  //   }
  // }

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

  String getSubCatName({required int index}) {
    return filterData[clickIndex].list?[mainCatSelected].list?[index].name ??
        '';
  }

  updateSearchQuery() {
    notifyListeners();
  }

  bool searchForSubCat({required int index}) {
    if ((filterData[clickIndex].list?[mainCatSelected].list?[index].name ?? '')
        .toLowerCase()
        .contains(catSearchTextController.text.toLowerCase())) {
      if (isAlreadySet == false) {
        isAlreadySet = true;
        subCatSelected = index;
      }
      return true;
    } else {
      if ((filterData[clickIndex]
                  .list?[mainCatSelected]
                  .list?[index]
                  .list
                  ?.where((element) => (element.name ?? '')
                      .toLowerCase()
                      .contains(catSearchTextController.text.toLowerCase()))
                  .toList()
                  .length ??
              0) >
          0) {
        if (isAlreadySet == false) {
          isAlreadySet = true;
          subCatSelected = index;
        }
        return true;
      } else {
        return false;
      }
    }
  }

  clearCatController() {
    catSearchTextController.clear();
    notifyListeners();
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

  bool searchForSubSubCat({required int index}) {
    if ((filterData[clickIndex]
                .list?[mainCatSelected]
                .list?[subCatSelected]
                .name ??
            '')
        .toLowerCase()
        .contains(catSearchTextController.text.toLowerCase())) {
      return true;
    } else {
      if ((filterData[clickIndex]
                  .list?[mainCatSelected]
                  .list?[subCatSelected]
                  .list?[index]
                  .name ??
              '')
          .toLowerCase()
          .contains(catSearchTextController.text.toLowerCase())) {
        return true;
      } else {
        return false;
      }
    }
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
    FilterModel subSubfilterModel = filterData[clickIndex]
            .list?[mainCatSelected]
            .list?[subCatSelected]
            .list?[index] ??
        FilterModel();

    FilterModel subfilterModel =
        filterData[clickIndex].list?[mainCatSelected].list?[subCatSelected] ??
            FilterModel();
    FilterModel mainfilterModel =
        filterData[clickIndex].list?[mainCatSelected] ?? FilterModel();

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

//! Below condition will add names in list to send algolia
//! Starts Here

    if (subSubfilterModel.selected ?? false) {
      if (subSubfilterModel.value == -1) {
        selectedMainCat.add(mainfilterModel.name);
      } else if (subSubfilterModel.value == -2) {
        selectedSubCat.add(subfilterModel.name);
      } else {
        selectedSubSubCat.add(subSubfilterModel.name);
      }

//! Ends Here

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
              value: mainfilterModel.value,
              name: mainfilterModel.name,
              list: [
                FilterModel(
                    value: subfilterModel.value,
                    name: subfilterModel.name,
                    list: [
                      FilterModel(
                          name: subSubfilterModel.name,
                          value: subSubfilterModel.value)
                    ])
              ]));
    } else {
//! Below condition will remove names in list to send algolia
//! Starts Here

      if (subSubfilterModel.value == -1) {
        selectedMainCat.remove(mainfilterModel.name);
      } else if (subSubfilterModel.value == -2) {
        selectedSubCat.remove(subfilterModel.name);
      } else {
        selectedSubSubCat.remove(subSubfilterModel.name);
      }
//! Ends Here

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
    printAllselections();
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

  searchForColor({required int index}) {
    if ((filterData[clickIndex].list?[index].name ?? '')
        .toLowerCase()
        .contains(colorSearchTextController.text.toLowerCase())) {
      return true;
    } else {
      return false;
    }
  }

  clearColorController() {
    colorSearchTextController.clear();
    notifyListeners();
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

// ! Adding in selected to send to algolia
//! Start here
      selectedColor.add(filterData[clickIndex].list?[index].name);
//! End hEre

      selectedColorFilters.insert(
          0,
          FilterModel(
            value: filterData[clickIndex].list?[index].value,
            name: filterData[clickIndex].list?[index].name,
          ));
    } else {
// ! Removing from selected to send to algolia
//! Start here
      selectedColor.remove(filterData[clickIndex].list?[index].name);
//! End Here

      filterData[clickIndex].list?[index].selectedCount =
          (filterData[clickIndex].list?[index].selectedCount ?? 0) - 1;
      filterData[clickIndex].selectedCount =
          (filterData[clickIndex].selectedCount ?? 0) - 1;
      selectedColorFilters.removeWhere((element) =>
          element.name == filterData[clickIndex].list?[index].name);
    }
    printAllselections();
    notifyListeners();
  }

  colorFindAndRemove(
      {required int mainCatId, required int index, required String colorName}) {
    filterData[clickIndex].selectedCount =
        (filterData[clickIndex].selectedCount ?? 0) - 1;

// ! Removing from selected to send to algolia
//! Start here
    selectedColor.remove(colorName);
//! End HereR

    filterData[clickIndex]
        .list
        ?.firstWhere((element) => element.value == mainCatId)
        .selected = false;

    selectedColorFilters.removeAt(index);
    printAllselections();
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

  searchForRootSize({required int index}) {
    if ((filterData[clickIndex].list?[index].name ?? '')
        .toLowerCase()
        .contains(sizeSearchTextController.text.toLowerCase())) {
      return true;
    } else {
      if ((filterData[clickIndex]
                  .list?[index]
                  .list
                  ?.where((element) => (element.name ?? '')
                      .toLowerCase()
                      .contains(sizeSearchTextController.text.toLowerCase()))
                  .toList()
                  .length ??
              0) >
          0) {
        return true;
      } else {
        return false;
      }
    }
  }

  searchSizeCheckbox({required int index}) {
    if ((filterData[clickIndex].list?[mainCatSelected].name ?? '')
        .toLowerCase()
        .contains(sizeSearchTextController.text.toLowerCase())) {
      return true;
    } else {
      if ((filterData[clickIndex].list?[mainCatSelected].list?[index].name ??
              '')
          .toLowerCase()
          .contains(sizeSearchTextController.text.toLowerCase())) {
        return true;
      } else {
        return false;
      }
    }
  }

  clearSizeController() {
    sizeSearchTextController.clear();
    notifyListeners();
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
      {required int mainCatId,
      required int subCatId,
      required int index,
      required String sizeName}) {
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
        .selected = false;
// ! Removing selected to send to algolia
//! Start here
    selectedSize.remove("$subCatId|$sizeName");
//! End HereR

    selectedSizeFilters.removeAt(index);
    printAllselections();
    notifyListeners();
  }

  setSizeCheckboxValue({required int index}) {
    filterData[clickIndex].list?[mainCatSelected].list?[index].selected =
        !(filterData[clickIndex].list?[mainCatSelected].list?[index].selected ??
            false);
    if (filterData[clickIndex].list?[mainCatSelected].list?[index].selected ??
        false) {
// ! Adding selected to send to algolia
//! Start here
      selectedSize.add(
          "${filterData[clickIndex].list?[mainCatSelected].list?[index].value}|${filterData[clickIndex].list?[mainCatSelected].list?[index].name}");
//! End HereR

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
// ! Removing selected to send to algolia
//! Start here
      selectedSize.remove(
          "${filterData[clickIndex].list?[mainCatSelected].list?[index].value}|${filterData[clickIndex].list?[mainCatSelected].list?[index].name}");
//! End HereR

      filterData[clickIndex].list?[mainCatSelected].selectedCount =
          (filterData[clickIndex].list?[mainCatSelected].selectedCount ?? 0) -
              1;
      filterData[clickIndex].selectedCount =
          (filterData[clickIndex].selectedCount ?? 0) - 1;

      selectedSizeFilters.removeWhere((element) =>
          element.list?[0].name ==
          filterData[clickIndex].list?[mainCatSelected].list?[index].name);
    }
    printAllselections();
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

  searchForDesigner({required int index}) {
    if ((filterData[clickIndex].list?[index].name ?? '')
        .toLowerCase()
        .contains(designerSearchTextController.text.toLowerCase())) {
      return true;
    } else {
      return false;
    }
  }

  clearDesignerController() {
    designerSearchTextController.clear();
    notifyListeners();
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
//! adding to send to algolia
      selectedDesigner.add(filterData[clickIndex].list?[index].name);
//! Ends Here

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
//! removing to send to algolia
      selectedDesigner.remove(filterData[clickIndex].list?[index].name);
//! Ends Here
      filterData[clickIndex].list?[index].selectedCount =
          (filterData[clickIndex].list?[index].selectedCount ?? 0) - 1;
      filterData[clickIndex].selectedCount =
          (filterData[clickIndex].selectedCount ?? 0) - 1;
      selectedDesignerFilters.removeWhere((element) =>
          element.name == filterData[clickIndex].list?[index].name);
    }
    printAllselections();
    notifyListeners();
  }

  designerFindAndRemove(
      {required int mainCatId,
      required int index,
      required String designerName}) {
//! remove to send to algolia
    selectedDesigner.remove(designerName);
//! Ends here

    filterData[clickIndex].selectedCount =
        (filterData[clickIndex].selectedCount ?? 0) - 1;

    filterData[clickIndex]
        .list
        ?.firstWhere((element) => element.value == mainCatId)
        .selected = false;

    selectedDesignerFilters.removeAt(index);
    printAllselections();
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
//! adding to send to algolia
      selectedDelivery.add(filterData[clickIndex].list?[index].name);
//! Ends here

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
//! adding to send to algolia
      selectedDelivery.remove(filterData[clickIndex].list?[index].name);
//! Ends here

      filterData[clickIndex].list?[index].selectedCount =
          (filterData[clickIndex].list?[index].selectedCount ?? 0) - 1;
      filterData[clickIndex].selectedCount =
          (filterData[clickIndex].selectedCount ?? 0) - 1;
      selectedDeliveryFilters.removeWhere((element) =>
          element.name == filterData[clickIndex].list?[index].name);
    }
    notifyListeners();
  }

  deliveryFindAndRemove(
      {required int mainCatId,
      required int index,
      required String deliveryName}) {
    filterData[clickIndex].selectedCount =
        (filterData[clickIndex].selectedCount ?? 0) - 1;

//! removing to send to algolia
    selectedDelivery.remove(deliveryName);
//! Ends here

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

  bool searchForOccasion({required int index}) {
    if ((filterData[clickIndex].list?[index].name ?? '')
        .toLowerCase()
        .contains(occasionSearchTextController.text.toLowerCase())) {
      return true;
    } else {
      return false;
    }
  }

  clearOccasionController() {
    occasionSearchTextController.clear();
    notifyListeners();
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
//! adding to send to algolia
      selectedOccasion.add(filterData[clickIndex].list?[index].name);
//! Ends here
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
//! removing to send to algolia
      selectedOccasion.remove(filterData[clickIndex].list?[index].name);
//! Ends here

      filterData[clickIndex].list?[index].selectedCount =
          (filterData[clickIndex].list?[index].selectedCount ?? 0) - 1;
      filterData[clickIndex].selectedCount =
          (filterData[clickIndex].selectedCount ?? 0) - 1;
      selectedOccasionFilters.removeWhere((element) =>
          element.name == filterData[clickIndex].list?[index].name);
    }
    printAllselections();
    notifyListeners();
  }

  occasionFindAndRemove(
      {required int mainCatId,
      required int index,
      required String occassionName}) {
//! adding to send to algolia
    selectedOccasion.remove(occassionName);
//! Ends here

    filterData[clickIndex].selectedCount =
        (filterData[clickIndex].selectedCount ?? 0) - 1;

    filterData[clickIndex]
        .list
        ?.firstWhere((element) => element.value == mainCatId)
        .selected = false;
    selectedOccasionFilters.removeAt(index);

    printAllselections();
    notifyListeners();
  }

  // getOnLevelCheckboxName({required int index}) {
  //   return filterData[clickIndex].list?[index].name ?? '';
  // }

  // getOneLevelCheckboxItemCount() {
  //   return filterData[clickIndex].list?.length ?? 0;
  // }

  // getOneLevelCheckboxSelection({required int index}) {
  //   return filterData[clickIndex].list?[index].selected ?? false;
  // }

  // setOneLevelCheckboxSelection({required int index}) {
  //   filterData[clickIndex].list?[index].selected =
  //       !(filterData[clickIndex].list?[index].selected ?? false);

  //   if (filterData[clickIndex].list?[index].selected ?? false) {
  //     filterData[clickIndex].list?[index].selectedCount =
  //         (filterData[clickIndex].list?[index].selectedCount ?? 0) + 1;

  //     filterData[clickIndex].selectedCount =
  //         (filterData[clickIndex].selectedCount ?? 0) + 1;
  //   } else {
  //     filterData[clickIndex].list?[index].selectedCount =
  //         (filterData[clickIndex].list?[index].selectedCount ?? 0) - 1;
  //     filterData[clickIndex].selectedCount =
  //         (filterData[clickIndex].selectedCount ?? 0) - 1;
  //   }
  //   notifyListeners();
  // }
}
