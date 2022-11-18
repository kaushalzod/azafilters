import 'package:azafilters/refine/models/helper_model.dart';
import 'package:flutter/material.dart';

class RefineProvider extends ChangeNotifier {
  late List<FilterModel> filterData = [];
  int sortByGroupValue = 0;
  late List sortBy;
  int mainCatSelected = 0;
  int subCatSelected = 0;

//! Constructor
  RefineProvider() {
    for (var item in filterBy) {
      filterData.add(FilterModel.fromJson(item));
    }
    sortBy = sortByData;
    notifyListeners();
  }

  set setFilterData(String indexes) {
    for (var i = 0; i < indexes.length; i++) {
      filterData[int.parse(indexes[0])].checked =
          !filterData[int.parse(indexes[0])].checked;
    }
  }

  set setSortByGroupValue(int newValue) {
    sortByGroupValue = newValue;
    notifyListeners();
  }

  set setSubCatSelected(int newValue) {
    subCatSelected = newValue;
    notifyListeners();
  }
}
