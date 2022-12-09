// import 'package:azafilters/constant.dart';
// import 'package:azafilters/helperWidgets/appbar_widget.dart';
// import 'package:azafilters/provider/refine_provider.dart';
// import 'package:azafilters/refine/widgets/refine_checkbox_widget.dart';
// import 'package:azafilters/refine/widgets/refine_search_bar.dart';
// import 'package:azafilters/refine/widgets/refine_subcat_tile.dart';
// import 'package:azafilters/refine/widgets/refine_tabtile_widget.dart';
// import 'package:azafilters/utility.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// class RefineSubFiltersPage extends StatelessWidget {
//   final String title;
//   // final int clickIndex;

//   const RefineSubFiltersPage({
//     super.key,
//     required this.title,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: greyScale100,
//       appBar: appbarWidget(title: title, icon: false),
//       body: Column(
//         children: [
//           Container(
//             decoration: const BoxDecoration(
//               border: Border(
//                 bottom: BorderSide(color: greyScale90),
//               ),
//             ),
//             padding: const EdgeInsets.symmetric(horizontal: 16)
//                 .add(const EdgeInsets.only(top: 8, bottom: 16)),
//             child: refineSearchBar(hint: "Search $title"),
//           ),
// //! Main Categories Tab
//           ViewType.threeLevel == getViewType(title)
//               ? Consumer<RefineProvider>(
//                   builder: (context, value, child) => SizedBox(
//                     height: 40,
//                     child: ListView.builder(
//                       physics: const ClampingScrollPhysics(),
//                       scrollDirection: Axis.horizontal,
//                       itemCount: value.getMainCatItemCount(),
//                       itemBuilder: (context, index) => RefineTabtileWidget(
//                         selectedCount: value.filterData[value.clickIndex]
//                                 .list?[index].selectedCount ??
//                             0,
//                         onTap: () {
//                           value.setMainCatSelected = index;
//                         },
//                         isActive: index == value.mainCatSelected,
//                         name: value.getMainCatName(index: index),
//                       ),
//                     ),
//                   ),
//                 )
//               : const SizedBox.shrink(),
// // //! Main and Sub categories Selections
//           Expanded(
//             child: Consumer<RefineProvider>(
//               builder: (context, value, child) => Row(
//                 children: [
//                   ViewType.twoLevel == getViewType(title) ||
//                           ViewType.threeLevel == getViewType(title)
//                       ? SizedBox(
//                           width: MediaQuery.of(context).size.width * .42,
//                           child: ListView.builder(
//                             itemBuilder: (context, index) {
//                               return RefineSubCatTileWidget(
//                                   selectionCount:
//                                       ViewType.twoLevel == getViewType(title)
//                                           ? value.getMainCatSelectionCount(
//                                               index: index)
//                                           : value.getSubCatSelectedCount(
//                                               index: index),
//                                   onTap: (v) {
//                                     value.setSubCatSelected = index;
//                                   },
//                                   title: ViewType.twoLevel == getViewType(title)
//                                       ? value.getMainCatName(index: index)
//                                       : value.getSubCatName(index: index),
//                                   isActive: value.subCatSelected == index);
//                             },
//                             itemCount: ViewType.twoLevel == getViewType(title)
//                                 ? value.getMainCatItemCount()
//                                 : value.getSubCatItemCount(),
//                           ),
//                         )
//                       : const SizedBox.shrink(),

// //! viewport Widget for checkbox
//                   Ink(
//                     width: getViewType(title) == ViewType.oneLevel
//                         ? MediaQuery.of(context).size.width
//                         : MediaQuery.of(context).size.width * .58,
//                     padding: EdgeInsets.only(
//                         top: getViewType(title) == ViewType.oneLevel ? 12 : 0),
//                     color: greyScale98,
//                     child: ListView.builder(
//                       itemBuilder: (context, index) {
//                         if (title.contains("Designer")) {
//                           if ((index != 0 &&
//                                   value.filterData[value.clickIndex]
//                                           .list?[index].name?[0] !=
//                                       value.filterData[value.clickIndex]
//                                           .list?[index - 1].name?[0]) ||
//                               index == 0) {
//                             return Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 title == "Designers"
//                                     ? Padding(
//                                         padding: const EdgeInsets.symmetric(
//                                             horizontal: 16),
//                                         child: Text(
//                                           value.getMainCatName(
//                                                   index: index)[0] ??
//                                               '',
//                                           style: text500.copyWith(
//                                               fontSize: 16, color: greyScale60),
//                                         ),
//                                       )
//                                     : const SizedBox.shrink(),
//                                 Padding(
//                                   padding: EdgeInsets.symmetric(
//                                       horizontal: getViewType(title) ==
//                                               ViewType.oneLevel
//                                           ? 4
//                                           : 0),
//                                   child: RefineCheckboxWidget(
//                                       onChanged: (values) {
//                                         value.setMainCatSelection(index: index);
//                                       },
//                                       value: value.getMainCatSelection(
//                                           index: index),
//                                       label:
//                                           value.getMainCatName(index: index)),
//                                 ),
//                               ],
//                             );
//                           } else {
//                             return Padding(
//                               padding:
//                                   const EdgeInsets.symmetric(horizontal: 4),
//                               child: RefineCheckboxWidget(
//                                   onChanged: (values) {
//                                     value.setMainCatSelection(index: index);
//                                   },
//                                   value:
//                                       value.getMainCatSelection(index: index),
//                                   label: value.getMainCatName(index: index)),
//                             );
//                           }
//                         } else {
//                           return Padding(
//                             padding: title == "Color"
//                                 ? const EdgeInsets.symmetric(
//                                     vertical: 2, horizontal: 12)
//                                 : const EdgeInsets.all(0),
//                             child: RefineCheckboxWidget(
//                                 onChanged: (values) {
//                                   getViewType(title) == ViewType.threeLevel
//                                       ? value.setSubSubCatSelection(
//                                           index: index)
//                                       : getViewType(title) == ViewType.twoLevel
//                                           ? value.setSizeCheckboxValue(
//                                               index: index)
//                                           : value.setOneLevelCheckboxSelection(
//                                               index: index);
//                                 },
//                                 value: getViewType(title) == ViewType.threeLevel
//                                     ? value.getSubSubCatSelection(index: index)
//                                     : getViewType(title) == ViewType.twoLevel
//                                         ? value.getSizeCheckboxValue(
//                                             index: index)
//                                         : value.getOneLevelCheckboxSelection(
//                                             index: index),
//                                 isColor: title == "Color",
//                                 colorCode: title == "Color"
//                                     ? value.getColorCode(index: index)
//                                     : "ffffff",
//                                 label: getViewType(title) == ViewType.threeLevel
//                                     ? value.getSubSubCatName(index: index)
//                                     : getViewType(title) == ViewType.twoLevel
//                                         ? value.getSizeCheckboxName(
//                                             index: index)
//                                         : value.getOnLevelCheckboxName(
//                                             index: index)),
//                           );
//                         }
//                       },
//                       itemCount: getViewType(title) == ViewType.threeLevel
//                           ? value.getSubSubCatItemCount()
//                           : getViewType(title) == ViewType.twoLevel
//                               ? value.getSizeCheckboxItemCount()
//                               : value.getOneLevelCheckboxItemCount(),
//                     ),
//                   )
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// enum ViewType { threeLevel, twoLevel, oneLevel, price }

// ViewType getViewType(String name) {
//   switch (name.toLowerCase()) {
//     case "categories":
//       return ViewType.threeLevel;
//     case "price":
//       return ViewType.price;
//     case "size":
//       return ViewType.twoLevel;
//     default:
//       return ViewType.oneLevel;
//     // Color, Occasion, Delivery Time, Designers
//   }
// }
