import 'package:azafilters/refine/models/helper_model.dart';
import 'package:flutter/material.dart';

class RefineProvider extends ChangeNotifier {
  late List<FilterModel> filterData = [];
  int sortByGroupValue = 0;
  late List sortBy;
  int clickIndex = 0;
  int mainCatSelected = 0;
  int subCatSelected = 0;
  RangeValues priceRangeValue = const RangeValues(0, 10000);

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

  getMainCatName({required int index}) {
    return filterData[clickIndex].list?[index].name ?? '';
  }

  getMainCatItemCount() {
    return filterData[clickIndex].list?.length ?? 0;
  }

  getSubCatName({required int index}) {
    return filterData[clickIndex].list?[mainCatSelected].list?[index].name ??
        '';
  }

  getSubCatItemCount() {
    return filterData[clickIndex].list?[mainCatSelected].list?.length ?? 0;
  }

  /// This will return checkbox names to select
  getCheckboxName({required int index}) {
    return filterData[clickIndex]
            .list?[mainCatSelected]
            .list?[subCatSelected]
            .list?[index]
            .name ??
        '';
  }

  getCheckboxItemCount() {
    return filterData[clickIndex]
            .list?[mainCatSelected]
            .list?[subCatSelected]
            .list
            ?.length ??
        0;
  }
}
