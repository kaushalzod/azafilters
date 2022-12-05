// filterPriceMapFunctio({required int? min, required int? max}) {
//   if (min == null || max == null) {
//     return {};
//   } else {
//     return {"min": min, "max": max};
//   }
// }

// Map<String, dynamic> getAlogliaPLPBody(
//     {required String userToken,
//     required String querry,
//     List? designerNames,
//     List? shopByOccasion,
//     List? subCatToken,
//     List? colorName,
//     List? sizeToken,
//     List? deliveryWeek,
//     Map<String, dynamic>? filters,
//     int? min,
//     int? max}) {
//   var data = AlgoliaSearchRequest().getRequestBody(
//       userToken: userToken,
//       filters: filters == null
//           ? null
//           : "(${filters['name']}:${filters['value'].contains(" ") ? "'${filters['value']}'" : filters['value']})",
//       selection: {
//         "filterPrice": filterPriceMapFunctio(max: max, min: min),
//         "designer_suggestion_token":
//             (designerNames ?? []).map((e) => "designerName:$e").toList(),
//         "sub_category_token":
//             (subCatToken ?? []).map((e) => "subCategoryTitle:$e").toList(),
//         "size_token": (sizeToken ?? []).map((e) => "size_token:$e").toList(),
//         "color_token": (colorName ?? []).map((e) => "colorName:$e").toList(),
//         "shopByOccassion_token":
//             (shopByOccasion ?? []).map((e) => "shopByOccassion:$e").toList(),
//         "estimated_delivery_week": (deliveryWeek ?? [])
//             .map((e) => "estimated_delivery_week:$e")
//             .toList(),
//       },
//       filterPriceApplied: min == null ? false : true,
//       query: encodedQuery(querry));

//   return data;
// }

// class AlgoliaSearchResponse {
//   getFacet(
//       {required Map<String, dynamic> json,
//       required Map facetIndex,
//       required Map selection}) {
//     var resultJson = json["results"];
//     var categoryJson = resultJson[facetIndex["sub_category_token"]]["facets"];
//     var designerJson =
//         resultJson[facetIndex["designer_suggestion_token"]]["facets"];
//     var priceJson = resultJson[facetIndex["filterPrice"]]["facets_stats"];
//     var sizeJson = resultJson[facetIndex["size_token"]]["facets"];
//     var colorJson = resultJson[facetIndex["color_token"]]["facets"];
//     var deliveryJson =
//         resultJson[facetIndex["estimated_delivery_week"]]["facets"];
//     var occassionJson =
//         resultJson[facetIndex["shopByOccassion_token"]]["facets"];
//     var categroyFacets = _getCategoryFacets(categoryJson, selection);
//     var designerFacets = _getDesignerFacets(designerJson, selection);
//     var priceFacets = _getPriceFacets(priceJson);
//     var sizeFacets = _getSizeFacets(sizeJson, selection);
//     var colorFacets = _getColorFacets(colorJson, selection);
//     var deliveryEstimateFacets =
//         _getDeliveryEstimateFacets(deliveryJson, selection);
//     var occasionFacets = _getOccasionFacets(occassionJson, selection);
//     var facets = [
//       categroyFacets,
//       designerFacets,
//       priceFacets,
//       sizeFacets,
//       colorFacets,
//       deliveryEstimateFacets,
//       occasionFacets
//     ];
//     return facets;
//   }

//   _getCategoryFacets(dynamic facetJson, Map selection) {
//     var mainCategoryToken = facetJson["main_category_token"];
//     var subCategoryToken = facetJson["sub_category_token"];
//     var subSubCategoryToken = facetJson["category_token"];
//     List itemList = [];
//     Map<String, List> tempItemList = {};
//     Map<String, List> tempSubList = {};

//     subSubCategoryToken?.forEach((key, value) {
//       var arrSubSubCat = key.split('|');

//       subCategoryToken.forEach((mkey, mvalue) {
//         var arrSubCat = mkey.split('|');
//         if (arrSubCat[0] == arrSubSubCat[2]) {
//           tempSubList.update(arrSubCat[1], (newValue) {
//             newValue.add({
//               "name": arrSubSubCat[1],
//               "value": arrSubSubCat[0].toString().parseInt(),
//               "count": value,
//               "selected": selection["category_token"]
//                   .contains("subSubCategoryTitle:${arrSubSubCat[1]}")
//             });
//             return newValue;
//           }, ifAbsent: () {
//             var newarr = [];
//             newarr.add({
//               "name": arrSubCat[1],
//               "value": arrSubCat[0].toString().parseInt(),
//               "count": value,
//               "selected": selection["category_token"]
//                   .contains("subSubCategoryTitle:${arrSubSubCat[1]}")
//             });
//             return newarr;
//           });
//         }
//       });
//     });

//     // print(subCategoryToken);
//     // print(mainCategoryToken);
//     subCategoryToken?.forEach((key, value) {
//       var arrSubCat = key.split('|');
//       // This condition is needed because we cant trust algolia
//       // if (arrSubCat.length == 3 &&
//       //     arrSubCat[0].isNotEmpty &&
//       //     arrSubCat[1].isNotEmpty &&
//       //     arrSubCat[2].isNotEmpty) {
//       mainCategoryToken?.forEach((mkey, mvalue) {
//         var arrMainCat = mkey.split('|');
//         if (arrMainCat[0] == arrSubCat[2]) {
//           tempItemList.update(arrMainCat[1], (newValue) {
//             newValue.add({
//               "name": arrSubCat[1],
//               "value": arrSubCat[0].toString().parseInt(),
//               "field": "sub_category_id",
//               "selectedCount": 0,
//               "count": value,
//               "selected": selection["sub_category_token"]
//                   .contains("subCategoryTitle:${arrSubCat[1]}")
//             });
//             return newValue;
//           }, ifAbsent: () {
//             var newarr = [];
//             newarr.add({
//               "name": arrSubCat[1],
//               "value": arrSubCat[0].toString().parseInt(),
//               "field": "sub_category_id",
//               "selectedCount": 0,
//               "count": value,
//               "selected": selection["sub_category_token"]
//                   .contains("subCategoryTitle:${arrSubCat[1]}")
//             });
//             return newarr;
//           });
//         }
//       });
//       // }
//     });
//     tempItemList.forEach((key, value) {
//       value.sort((a, b) => a["name"].compareTo(b["name"]));
//       itemList.add({"title": key, "list": value});
//     });
//     var category = {
//       "name": "Categories",
//       "field": "category_id",
//       "selection": "multiple",
//       "selectedCount": 0,
//       "nested": true,
//       "list": itemList,
//     };
//     return category;
//   }

//   _getDesignerFacets(dynamic facetJson, Map selection) {
//     var designerToken = facetJson["designer_suggestion_token"];
//     // "1355|Nazaakat by Samara Singh": 1262,
//     List itemList = [];
//     designerToken?.forEach((key, value) {
//       var arr = key.split('|');
//       itemList.add({
//         "name": arr[1],
//         "value": arr[0].toString().parseInt(),
//         "count": value,
//         "selected": selection["designer_suggestion_token"]
//             .contains("designerName:${arr[1]}")
//       });
//     });
//     itemList.sort((a, b) => a["name"].compareTo(b["name"]));
//     var designers = {
//       "name": "Designers",
//       "field": "designer_id",
//       "selection": "multiple",
//       "nested": false,
//       "list": itemList,
//     };
//     return designers;
//   }

//   _getPriceFacets(dynamic facetStats) {
//     var priceToken = facetStats["filterPrice"];
//     var prices = {
//       "name": "Price",
//       "field": "price",
//       "selection": "range",
//       "nested": false,
//       "min": priceToken["min"].toString(),
//       "max": priceToken["max"].toString()
//     };
//     return prices;
//   }

//   _getSizeFacets(dynamic facetJson, Map selection) {
//     var sizeToken = facetJson["size_token"];
//     List itemList = [];
//     Map<String, List> tempItemList = {};
//     sizeToken?.forEach((key, value) {
//       var arr = key.split('|');
//       categorizedSize.forEach((title, ids) {
//         if (ids.contains(int.parse(arr[0]))) {
//           tempItemList.update(title, (newValue) {
//             newValue.add({
//               "name": arr[1],
//               "value": arr[0].toString().parseInt(),
//               "count": value,
//               "selected": selection["size_token"]
//                   .contains("size_token:${arr[0]}|${arr[1]}")
//             });
//             return newValue;
//           }, ifAbsent: () {
//             var newarr = [];
//             newarr.add({
//               "name": arr[1],
//               "value": arr[0].toString().parseInt(),
//               "count": value,
//               "selected": selection["size_token"]
//                   .contains("size_token:${arr[0]}|${arr[1]}")
//             });
//             return newarr;
//           });
//         }
//       });
//     });
//     tempItemList.forEach((key, value) {
//       value.sort((a, b) => a["value"].compareTo(b["value"]));
//       itemList.add({"title": key, "list": value});
//     });
//     var size = {
//       "name": "Size",
//       "field": "size_id",
//       "selection": "multiple",
//       "nested": true,
//       "list": itemList,
//     };
//     return size;
//   }

//   _getColorFacets(dynamic facetJson, Map selection) {
//     var colorToken = facetJson["color_token"];
//     //  "27|Pink": 1613,
//     List itemList = [];
//     colorToken?.forEach((key, value) {
//       var arr = key.split('|');
//       itemList.add({
//         "name": arr[1],
//         "value": arr[0].toString().parseInt(),
//         // "code": arr[2] ?? 0,
//         "count": value,
//         "selected": selection["color_token"].contains("colorName:${arr[1]}")
//       });
//     });
//     itemList.sort((a, b) => a["name"].compareTo(b["name"]));
//     var colors = {
//       "name": "Color",
//       "field": "color_id",
//       "selection": "multiple",
//       "nested": false,
//       "list": itemList,
//     };
//     return colors;
//   }

//   _getDeliveryEstimateFacets(dynamic facetJson, Map selection) {
//     var deliveryTime = facetJson["estimated_delivery_week"];
//     // "1": 35,
//     List itemList = [];
//     deliveryTime?.forEach((key, value) {
//       if (key != 0 && key != "0") {
//         itemList.add({
//           "name": key + " week",
//           "value": key.toString().parseInt(),
//           "count": value,
//           "selected": selection["estimated_delivery_week"]
//               .contains("estimated_delivery_week:$key")
//         });
//       }
//     });
//     itemList.sort((a, b) => a["name"].compareTo(b["name"]));
//     var delivery = {
//       "name": "Delivery Time",
//       "field": "delivery",
//       "selection": "single",
//       "nested": false,
//       "list": itemList,
//     };
//     return delivery;
//   }

//   _getOccasionFacets(dynamic facetJson, Map selection) {
//     var occassionToken = facetJson["shopByOccassion_token"];
//     // "2|Mehendi & Haldi": 6
//     List itemList = [];
//     occassionToken?.forEach((key, value) {
//       var arr = key.split('|');
//       itemList.add({
//         "name": arr[1],
//         "value": arr[0].toString().parseInt(),
//         "count": value,
//         "selected": selection["shopByOccassion_token"]
//             .contains("shopByOccassion:${arr[1]}")
//       });
//     });
//     itemList.sort((a, b) => a["name"].compareTo(b["name"]));
//     var occassion = {
//       "name": "Occasion",
//       "field": "occasion_id",
//       "selection": "multiple",
//       "nested": false,
//       "list": itemList,
//     };
//     return occassion;
//   }

//   getPageLink(facetJson) {
//     var pages = facetJson["nbPages"] ?? 0;
//     List pageLink = [];
//     for (var i = 1; i < pages; i++) {
//       pageLink.add("p=$i");
//     }
//     return pageLink;
//   }

//   getSortIndex() {
//     return [
//       {
//         "name": "Popularity",
//         "field": "Products_popularity_desc",
//         "selected": false,
//         "order": 1,
//         "indexName": "Products_popularity_desc"
//       },
//       {
//         "name": "New Arrivals",
//         "field": "Products_productID_desc",
//         "selected": false,
//         "order": 2,
//         "indexName": "Products_productID_desc"
//       },
//       {
//         "name": "Price Low to High",
//         "field": "Products_filterPrice_asc",
//         "selected": false,
//         "order": 3,
//         "indexName": "Products_filterPrice_asc"
//       },
//       {
//         "name": "Price High to Low",
//         "field": "Products_filterPrice_desc",
//         "selected": false,
//         "order": 4,
//         "indexName": "Products_filterPrice_desc"
//       }
//     ];
//   }

//   convertToDoormammu(
//           {required Map<String, dynamic> json,
//           required Map selectionIndex,
//           required Map selection}) =>
//       {
//         "status": 200,
//         "message": "Success",
//         "data": {
//           "title": json["results"][0]["query"] ?? "",
//           "url_tag": "collection",
//           "total_records":
//               currencyGlobal.format(json["results"][0]["nbHits"] ?? 0),
//           "query_id": "",
//           'queryID': json["results"][0]["queryID"] ?? "",
//           "list": json["results"][0]["hits"].map((z) {
//             double mrp;
//             double youPay;
//             try {
//               mrp = double.parse(z["productPrice"].toString()) /
//                   IntroModelList.rateConversion;
//               youPay = double.parse(z["filterPrice"].toString()) /
//                   IntroModelList.rateConversion;
//             } catch (e) {
//               mrp = 0.0;
//               youPay = 0.0;
//             }
//             return {
//               'designer_name': z["designerName"],
//               'discount_percentage':
//                   double.parse((z["discountPercent"] ?? 0).toString()).round(),
//               'mrp': mrp.roundToDouble(),
//               'you_pay': youPay.roundToDouble(),
//               'inr_mrp': '${z["productPrice"]}',
//               'inr_you_pay': '${z["filterPrice"]}',
//               'display_mrp': currencyGlobal.format(mrp.roundToDouble()),
//               'display_you_pay': currencyGlobal.format(youPay.roundToDouble()),
//               'id': z["productID"],
//               'price_on_request': z["priceOnRequest"] == 1 ? true : false,
//               'image': z["image"],
//               'name': z["productTitle"],
//               'url': z["url"],
//               'rts': z['rts'],
//               'large_image': z["productThumbImg"] != null
//                   ? "$STATIC_URL" +
//                       "/tr:w-575,dpr-2,e-sharpen/uploads/product/${z['productThumbImg']}"
//                   : null,
//               // 'is_mtorts': z["mtoRtsStock"] == 1 ? true : false,
//               'tag': z["productLabel"],
//               'root_category_id': z['categoryID'],
//               'category_id': z["subCategoryID"],
//               'sub_category_id':
//                   z['subSubCategoryID'] == "" ? 0 : z['subSubCategoryID'][0],
//               // 'mtorts_stock': z["mto_rts_stock"],
//               // 'warehouse_stock': z["warehouse_stock"],
//               'sizes': _sizeMapper(z["size_act_token"]),
//               "in_wishlist": false,
//               "in_cart": false,
//             };
//           }).toList(),
//           "filters": getFacet(
//               json: json, facetIndex: selectionIndex, selection: selection),
//           "page_links": getPageLink(json["results"][0]),
//           "sort": getSortIndex()
//         }
//       };
//   _sizeMapper(sizeToken) {
//     var size = [];
//     sizeToken?.forEach((el) {
//       var arr = el.split('|');
//       double mrp = (double.parse(arr[3].toString()) / (78.5));
//       double youPay = double.parse(arr[6].toString()) / (78.5);
//       size.add({
//         "id": int.parse(arr[0]),
//         "name": arr[1],
//         "mrp": mrp.roundToDouble().toString(),
//         "you_pay": youPay.roundToDouble().toString(),
//         "inr_mrp": '${arr[3]}',
//         "inr_you_pay": '${arr[6]}',
//         "display_mrp": currencyGlobal.format(mrp.roundToDouble()).toString(),
//         "display_you_pay":
//             currencyGlobal.format(youPay.roundToDouble()).toString()
//       });
//     });
//     return size;
//   }
// }

// class AlgoliaSearchRequest {
//   Map<String, dynamic> getRequestBody(
//       {required Map selection,
//       bool filterPriceApplied = false,
//       required String query,
//       String? filters,
//       String indexName = "Products",
//       required String userToken}) {
//     var selectionIndex = selection.map((key, value) => MapEntry(key, 0));
//     List requestBody = [
//       {
//         "indexName": indexName,
//         "params": "query=$query",
//         "facetFilters": _facetFilters(selection, "filterPrice"),
//         "facets": ["*"],
//         "hitsPerPage": 16,
//         "clickAnalytics": true,
//         "filters":
//             'miniMeFlag=0 AND productStock > 0 AND ${HeaderFile().getForCountry()}=1 ${filters == null ? "" : "AND $filters"}',
//         "userToken": userToken,
//         "enablePersonalization": true
//       }
//     ];
//     selection.forEach((key, dynamic value) {
//       if (value.isNotEmpty) {
//         var tempReq = {
//           "indexName": indexName,
//           "params": "query=$query",
//           "facetFilters": _facetFilters(selection, key),
//           "facets": key == "sub_category_token"
//               ? [key, "main_category_token"]
//               : [key],
//           "hitsPerPage": 0,
//           "filters":
//               'miniMeFlag=0 AND productStock > 0 AND ${HeaderFile().getForCountry()}=1 ${filters == null ? "" : "AND $filters"}',
//           "userToken": userToken,
//           "enablePersonalization": true
//         };
//         if (key == "filterPrice") {
//           requestBody[0]["numericFilters"] = [
//             "filterPrice>=${value["min"]}",
//             "filterPrice<=${value["max"]}"
//           ];
//           requestBody.add(tempReq);
//         } else {
//           filterPriceApplied &&
//                   selection["filterPrice"]?["min"] != null &&
//                   selection["filterPrice"]?["max"] != null
//               ? tempReq["numericFilters"] = [
//                   "filterPrice>=${selection["filterPrice"]?["min"]}",
//                   "filterPrice<=${selection["filterPrice"]?["max"]}"
//                 ]
//               // ignore: unnecessary_statements
//               : null;
//           requestBody.add(tempReq);
//         }
//       }
//     });
//     selectionIndex.forEach((key, value) {
//       for (var i = 1; i < requestBody.length; i++) {
//         if (requestBody[i]["facets"].contains(key)) {
//           selectionIndex.update(key, (value) => i);
//         }
//       }
//     });
//     return {
//       "body": {"requests": requestBody},
//       "selectionIndex": selectionIndex,
//       "selection": selection
//     };
//   }

//   /// This function return the list of facetFilters excluding the filterPrice and passed token key.
//   List _facetFilters(var select, String token) {
//     var facet = [];
//     select.forEach((key, dynamic value) {
//       if (value.isNotEmpty && key != token && key != "filterPrice") {
//         facet.add(value);
//       }
//     });
//     return facet;
//   }
// }

// // jsonEncode(AlgoliaSearchResponse().convertToDoormammu(
// //       json: json,
// //       selection: data["selection"],
// //       selectionIndex: data["selectionIndex"],
// //     )
