// List filterBy = [
//   {
//     "name": "Categories",
//     "checked": true,
//     "level": 3,
//     "subCat": [
//       {
//         "name": "Women",
//         "checked": true,
//         "subCat": [
//           {
//             "name": "Kurta Sets",
//             "checked": false,
//             "subCat": [
//               {"name": "Palazzo Sets", "checked": true, "subCat": []},
//               {"name": "Printed Kurta Sets", "checked": true, "subCat": []},
//               {"name": "Banarasi Kurta Sets", "checked": true, "subCat": []},
//               {
//                 "name": "Jacket & Angarkha Kurta Sets",
//                 "checked": true,
//                 "subCat": []
//               },
//               {"name": "Sharara & Gharara Sets", "checked": true, "subCat": []},
//               {"name": "Fusion Style Sets", "checked": true, "subCat": []},
//               {"name": "Anarkali Sets", "checked": true, "subCat": []},
//               {"name": "Straight Kurta Sets", "checked": true, "subCat": []},
//               {"name": "Dhoti Sets", "checked": true, "subCat": []},
//             ]
//           },
//           {"name": "Lehnga", "checked": true, "subCat": []},
//           {"name": "Tunics & Kurtis", "checked": false, "subCat": []},
//           {"name": "Sarees", "checked": false, "subCat": []},
//           {"name": "Dresses", "checked": false, "subCat": []},
//           {"name": "Tops", "checked": false, "subCat": []},
//         ]
//       },
//       {"name": "Men", "checked": false, "subCat": []},
//       {"name": "Jewellery", "checked": false, "subCat": []},
//       {"name": "Accessories", "checked": false, "subCat": []},
//       {"name": "Kids", "checked": false, "subCat": []},
//       {"name": "Homeware", "checked": false, "subCat": []},
//     ]
//   },
//   {
//     "name": "Designers",
//     "checked": false,
//     "subCat": [
//       {"name": "Aalyxir", "checked": false},
//       {"name": "Aamli", "checked": false},
//       {"name": "Aanchal Sayal", "checked": false},
//       {"name": "Aapro", "checked": false},
//       {"name": "Aarbee By Ravi", "checked": false},
//       {"name": "Aaree Accessories", "checked": false},
//       {"name": "Aarke Ritu Kumar", "checked": false},
//       {"name": "Aarti & Juhi Grover", "checked": false},
//       {"name": "Aarti Mahtani", "checked": false},
//       {"name": "Bhalotia", "checked": false},
//       {"name": "Bhavik Shah", "checked": false},
//       {"name": "Bhavin Vora", "checked": false},
//       {"name": "Bhavna Kumar", "checked": false},
//       {"name": "Bhawna Rao", "checked": false},
//     ],
//     "level": 1
//   },
//   {"name": "Price Range", "checked": false, "subCat": [], "level": 0},
//   {
//     "name": "Size",
//     "checked": false,
//     "subCat": [
//       {
//         "name": "Clothings",
//         "checked": false,
//         "subCat": [
//           {"name": "XXS", "checked": false},
//           {"name": "XS", "checked": false},
//           {"name": "S", "checked": false},
//           {"name": "M", "checked": false},
//           {"name": "L", "checked": false},
//           {"name": "XL", "checked": false},
//           {"name": "XXL", "checked": false},
//           {"name": "3XL", "checked": false},
//           {"name": "4XL", "checked": false},
//           {"name": "5XL", "checked": false},
//           {"name": "6XL", "checked": false},
//           {"name": "FREE SIZE", "checked": false},
//         ]
//       },
//       {"name": "Footwear", "checked": false, "subCat": []},
//       {"name": "Jewellery", "checked": false, "subCat": []},
//       {"name": "Accessories", "checked": false, "subCat": []},
//       {"name": "Kids", "checked": false, "subCat": []},
//       {"name": "Homeware", "checked": false, "subCat": []},
//     ],
//     "level": 2
//   },
//   {
//     "name": "Colours",
//     "checked": false,
//     "subCat": [
//       {"name": "Red", "checked": false, "color": "8490D8"},
//       {"name": "Green", "checked": false, "color": "3C4476"},
//       {"name": "Pink", "checked": false},
//       {"name": "Blue", "checked": false},
//       {"name": "Purple", "checked": false},
//       {"name": "Yellow", "checked": false},
//       {"name": "Orange", "checked": false},
//       {"name": "Golden", "checked": false},
//       {"name": "White", "checked": false},
//       {"name": "Black", "checked": false},
//       {"name": "Grey", "checked": false},
//       {"name": "Silver", "checked": false},
//     ],
//     "level": 1
//   },
//   {
//     "name": "Delivery Time",
//     "checked": false,
//     "subCat": [
//       {"name": "1 Week", "checked": false},
//       {"name": "2 Week", "checked": false},
//       {"name": "3 Week", "checked": false},
//       {"name": "4 Week", "checked": false},
//       {"name": "5 Week", "checked": false},
//     ],
//     "level": 1
//   },
//   {
//     "name": "Occasion",
//     "checked": false,
//     "subCat": [
//       {"name": "Wedding", "checked": false},
//       {"name": "Party", "checked": false},
//       {"name": "Office", "checked": false},
//       {"name": "Haldi", "checked": false},
//       {"name": "Mehndi", "checked": false},
//       {"name": "Reception", "checked": false},
//       {"name": "Shradh", "checked": false},
//       {"name": "Diwali", "checked": false},
//       {"name": "Birthday", "checked": false},
//       {"name": "Kitty party", "checked": false},
//     ],
//     "level": 1
//   }
// ];

/// Level - 0 Means it has no level like price
/// Level - 1 Means it has 1 level like designer,color,occasion
/// Level - 2 Means it has 2 levels like size
/// Level - 3 Means it has 3 levels like categories

List sortByData = [
  {"name": "Popularity", "value": 0},
  {"name": "Newest first", "value": 1},
  {"name": "Price: low to high", "value": 2},
  {"name": "Price: high to low", "value": 3},
];

// class FilterModel {
//   FilterModel({
//     required this.name,
//     required this.checked,
//     required this.subCat,
//     required this.level,
//     this.colorCode,
//   });
//   String? name;
//   late final bool checked;
//   late final List<FilterModel>? subCat;
//   late final int level;
//   late final String? colorCode;

//   FilterModel.fromJson(Map<String, dynamic> json) {
//     name = json['name'] as String;
//     checked = json['checked'];
//     level = json['level'] ?? 0;
//     colorCode = json['color'];
//     // subCat = [];
//     subCat = (json['subCat'] as List<dynamic>?)
//         ?.map((e) => FilterModel.fromJson(e))
//         .toList();
//     // json['subCat']?.forEach((e) {
//     //   subCat?.add(FilterModel.fromJson(e));
//     // });
//   }

//   Map<String, dynamic> toJson() {
//     final data = <String, dynamic>{};
//     data['name'] = name;
//     data['checked'] = checked;
//     data['level'] = level;
//     data['subCat'] = subCat?.map((e) => e.toJson()).toList();
//     return data;
//   }
// }

Map filterJsonData = {
  "filters": [
    {
      "name": "Categories",
      "field": "category_id",
      "selection": "multiple",
      "nested": true,
      "selectedCount": 0,
      "list": [
        {
          "name": "Women",
          "value": 3,
          "selectedCount": 0,
          "list": [
            {
              "name": "Kurta Sets",
              "value": 49,
              "count": 2552,
              "selected": false,
              "field": "sub_category_id",
              "selectedCount": 0,
              "list": [
                {
                  "name": "Palazzo Sets",
                  "value": 102,
                  "count": 90,
                  "selected": false
                },
                {
                  "name": "Printed Kurta Sets",
                  "value": 300,
                  "count": 63,
                  "selected": false
                },
                {
                  "name": "Banarasi Kurta Sets",
                  "value": 301,
                  "count": 4,
                  "selected": false
                },
                {
                  "name": "Jacket & Angarkha Kurta Sets",
                  "value": 303,
                  "count": 44,
                  "selected": false
                },
                {
                  "name": "Sharara & Gharara Sets",
                  "value": 63,
                  "count": 185,
                  "selected": false
                },
                {
                  "name": "Fusion Style Sets",
                  "value": 64,
                  "count": 431,
                  "selected": false
                },
                {
                  "name": "Anarkali Sets",
                  "value": 65,
                  "count": 500,
                  "selected": false
                },
                {
                  "name": "Straight Kurta Sets",
                  "value": 67,
                  "count": 1193,
                  "selected": false
                },
                {
                  "name": "Dhoti Sets",
                  "value": 80,
                  "count": 42,
                  "selected": false
                }
              ]
            },
            {
              "name": "Lehengas",
              "value": 48,
              "count": 525,
              "selected": false,
              "selectedCount": 0,
              "field": "sub_category_id",
              "list": [
                {
                  "name": "Classic Lehengas",
                  "value": 103,
                  "count": 199,
                  "selected": false
                },
                {
                  "name": "Printed Lehengas",
                  "value": 285,
                  "count": 24,
                  "selected": false
                },
                {
                  "name": "Fusion Lehengas",
                  "value": 286,
                  "count": 90,
                  "selected": false
                },
                {
                  "name": "Lehenga Skirts",
                  "value": 287,
                  "count": 9,
                  "selected": false
                },
                {
                  "name": "Kurta Lehengas",
                  "value": 81,
                  "count": 29,
                  "selected": false
                },
                {
                  "name": "Jacket & Cape Lehengas",
                  "value": 93,
                  "count": 33,
                  "selected": false
                },
                {
                  "name": "Bridal Lehengas",
                  "value": 95,
                  "count": 141,
                  "selected": false
                }
              ]
            },
            {
              "selectedCount": 0,
              "name": "Sleeves",
              "value": 312,
              "count": 16,
              "selected": false,
              "field": "sub_category_id"
            },
            {
              "selectedCount": 0,
              "name": "Sports & Activewear",
              "value": 315,
              "count": 6,
              "selected": false,
              "field": "sub_category_id"
            },
            {
              "selectedCount": 0,
              "name": "Tops",
              "value": 50,
              "count": 538,
              "selected": false,
              "field": "sub_category_id",
              "list": [
                {
                  "name": "Sweatshirts",
                  "value": 104,
                  "count": 3,
                  "selected": false
                },
                {
                  "name": "Shirts",
                  "value": 105,
                  "count": 151,
                  "selected": false
                },
                {
                  "name": "Crop Tops",
                  "value": 66,
                  "count": 84,
                  "selected": false
                },
                {
                  "name": "Blouses",
                  "value": 72,
                  "count": 300,
                  "selected": false
                }
              ]
            },
            {
              "selectedCount": 0,
              "name": "Tunics & Kurtis",
              "value": 55,
              "count": 384,
              "selected": false,
              "field": "sub_category_id",
              "list": [
                {"name": "Short", "value": 100, "count": 49, "selected": false},
                {"name": "Long", "value": 101, "count": 201, "selected": false},
                {
                  "name": "Knee-length",
                  "value": 76,
                  "count": 38,
                  "selected": false
                },
                {
                  "name": "Asymmetrical",
                  "value": 82,
                  "count": 93,
                  "selected": false
                }
              ]
            },
            {
              "selectedCount": 0,
              "name": "Sarees",
              "value": 46,
              "count": 767,
              "selected": false,
              "field": "sub_category_id",
              "list": [
                {
                  "name": "Banarasi Sarees",
                  "value": 228,
                  "count": 3,
                  "selected": false
                },
                {
                  "name": "Chanderi Sarees",
                  "value": 229,
                  "count": 8,
                  "selected": false
                },
                {
                  "name": "Silk Sarees",
                  "value": 232,
                  "count": 11,
                  "selected": false
                },
                {
                  "name": "Ruffle Sarees",
                  "value": 293,
                  "count": 7,
                  "selected": false
                },
                {
                  "name": "Saree Gowns",
                  "value": 295,
                  "count": 9,
                  "selected": false
                },
                {
                  "name": "Printed Sarees",
                  "value": 296,
                  "count": 8,
                  "selected": false
                },
                {
                  "name": "Pant & Dhoti Sarees",
                  "value": 297,
                  "count": 14,
                  "selected": false
                },
                {
                  "name": "Classic Sarees",
                  "value": 62,
                  "count": 555,
                  "selected": false
                },
                {
                  "name": "Pre-Draped Sarees",
                  "value": 74,
                  "count": 111,
                  "selected": false
                },
                {
                  "name": "Lehenga Sarees",
                  "value": 79,
                  "count": 3,
                  "selected": false
                },
                {
                  "name": "Handloom Sarees",
                  "value": 84,
                  "count": 38,
                  "selected": false
                }
              ]
            },
            {
              "selectedCount": 0,
              "name": "Dresses",
              "value": 51,
              "count": 1169,
              "selected": false,
              "field": "sub_category_id",
              "list": [
                {"name": "Maxi", "value": 68, "count": 257, "selected": false},
                {"name": "Short", "value": 75, "count": 365, "selected": false},
                {"name": "Midi", "value": 97, "count": 545, "selected": false}
              ]
            },
            {
              "selectedCount": 0,
              "name": "Gowns",
              "value": 47,
              "count": 89,
              "selected": false,
              "field": "sub_category_id"
            },
            {
              "selectedCount": 0,
              "name": "Dupattas",
              "value": 225,
              "count": 90,
              "selected": false,
              "field": "sub_category_id"
            },
            {
              "selectedCount": 0,
              "name": "Jumpsuits",
              "value": 52,
              "count": 164,
              "selected": false,
              "field": "sub_category_id"
            },
            {
              "selectedCount": 0,
              "name": "Skirt Sets",
              "value": 73,
              "count": 58,
              "selected": false,
              "field": "sub_category_id"
            },
            {
              "selectedCount": 0,
              "name": "Pant Sets",
              "value": 77,
              "count": 196,
              "selected": false,
              "field": "sub_category_id"
            },
            {
              "selectedCount": 0,
              "name": "Skirts",
              "value": 53,
              "count": 70,
              "selected": false,
              "field": "sub_category_id",
              "list": [
                {"name": "Short", "value": 106, "count": 15, "selected": false},
                {"name": "Midi", "value": 69, "count": 21, "selected": false},
                {"name": "Long", "value": 70, "count": 33, "selected": false}
              ]
            },
            {
              "selectedCount": 0,
              "name": "Jackets",
              "value": 54,
              "count": 137,
              "selected": false,
              "field": "sub_category_id"
            },
            {
              "selectedCount": 0,
              "name": "Kaftans",
              "value": 56,
              "count": 96,
              "selected": false,
              "field": "sub_category_id"
            },
            {
              "selectedCount": 0,
              "name": "Pants",
              "value": 58,
              "count": 215,
              "selected": false,
              "field": "sub_category_id",
              "list": [
                {
                  "name": "Draped Pants",
                  "value": 71,
                  "count": 22,
                  "selected": false
                },
                {
                  "name": "Trousers",
                  "value": 92,
                  "count": 143,
                  "selected": false
                },
                {
                  "name": "Palazzos",
                  "value": 94,
                  "count": 38,
                  "selected": false
                }
              ]
            },
            {
              "selectedCount": 0,
              "name": "Capes",
              "value": 61,
              "count": 45,
              "selected": false,
              "field": "sub_category_id"
            },
            {
              "selectedCount": 0,
              "name": "Saree Blouses",
              "value": 124,
              "count": 26,
              "selected": false,
              "field": "sub_category_id"
            },
            {
              "selectedCount": 0,
              "name": "Swimwear",
              "value": 152,
              "count": 9,
              "selected": false,
              "field": "sub_category_id",
              "list": [
                {"name": "Bikini", "value": 153, "count": 1, "selected": false},
                {
                  "name": "Monokinis",
                  "value": 154,
                  "count": 1,
                  "selected": false
                },
                {
                  "name": "Cover Ups",
                  "value": 155,
                  "count": 7,
                  "selected": false
                }
              ]
            }
          ]
        },
        {
          "selectedCount": 0,
          "name": "Men",
          "value": 4,
          "list": [
            {
              "selectedCount": 0,
              "name": "Pant Sets",
              "value": 224,
              "count": 22,
              "selected": false,
              "field": "sub_category_id"
            },
            {
              "selectedCount": 0,
              "name": "Kurta Sets",
              "value": 35,
              "count": 1260,
              "selected": false,
              "field": "sub_category_id",
              "list": [
                {
                  "name": "Printed",
                  "value": 234,
                  "count": 212,
                  "selected": false
                },
                {
                  "name": "Embroidered",
                  "value": 235,
                  "count": 232,
                  "selected": false
                },
                {
                  "name": "Plain",
                  "value": 236,
                  "count": 681,
                  "selected": false
                },
                {
                  "name": "Stylized",
                  "value": 237,
                  "count": 126,
                  "selected": false
                }
              ]
            },
            {
              "selectedCount": 0,
              "name": "Kurtas",
              "value": 34,
              "count": 215,
              "selected": false,
              "field": "sub_category_id",
              "list": [
                {
                  "name": "Classic Kurtas",
                  "value": 41,
                  "count": 146,
                  "selected": false
                },
                {
                  "name": "Short Kurtas",
                  "value": 42,
                  "count": 67,
                  "selected": false
                }
              ]
            },
            {
              "selectedCount": 0,
              "name": "Sherwanis",
              "value": 33,
              "count": 244,
              "selected": false,
              "field": "sub_category_id"
            },
            {
              "selectedCount": 0,
              "name": "Bandhgalas",
              "value": 36,
              "count": 68,
              "selected": false,
              "field": "sub_category_id"
            },
            {
              "selectedCount": 0,
              "name": "Nehru Jacket & Sets",
              "value": 32,
              "count": 564,
              "selected": false,
              "field": "sub_category_id"
            },
            {
              "selectedCount": 0,
              "name": "Shirts",
              "value": 37,
              "count": 494,
              "selected": false,
              "field": "sub_category_id",
              "list": [
                {
                  "name": "Formal shirts",
                  "value": 238,
                  "count": 62,
                  "selected": false
                },
                {
                  "name": "Casual shirts",
                  "value": 239,
                  "count": 430,
                  "selected": false
                }
              ]
            },
            {
              "selectedCount": 0,
              "name": "Bottoms",
              "value": 29,
              "count": 156,
              "selected": false,
              "field": "sub_category_id",
              "list": [
                {
                  "name": "Casual Trousers",
                  "value": 39,
                  "count": 55,
                  "selected": false
                },
                {
                  "name": "Dhoti Pants",
                  "value": 45,
                  "count": 96,
                  "selected": false
                }
              ]
            },
            {
              "selectedCount": 0,
              "name": "Jackets",
              "value": 30,
              "count": 30,
              "selected": false,
              "field": "sub_category_id"
            },
            {
              "selectedCount": 0,
              "name": "Suits & Tuxedos",
              "value": 31,
              "count": 33,
              "selected": false,
              "field": "sub_category_id"
            },
            {
              "selectedCount": 0,
              "name": "Blazers",
              "value": 28,
              "count": 20,
              "selected": false,
              "field": "sub_category_id",
              "list": [
                {
                  "name": "Double Breasted Blazers",
                  "value": 38,
                  "count": 1,
                  "selected": false
                },
                {
                  "name": "Single Breasted Blazers",
                  "value": 40,
                  "count": 18,
                  "selected": false
                }
              ]
            },
            {
              "selectedCount": 0,
              "name": "T-shirts",
              "value": 178,
              "count": 47,
              "selected": false,
              "field": "sub_category_id"
            },
            {
              "selectedCount": 0,
              "name": "Shorts",
              "value": 162,
              "count": 8,
              "selected": false,
              "field": "sub_category_id"
            },
            {
              "selectedCount": 0,
              "name": "Accessories",
              "value": 167,
              "count": 798,
              "selected": false,
              "field": "sub_category_id",
              "list": [
                {
                  "name": "Bow tie",
                  "value": 168,
                  "count": 32,
                  "selected": false
                },
                {
                  "name": "Cufflinks",
                  "value": 169,
                  "count": 119,
                  "selected": false
                },
                {
                  "name": "Tie Pins",
                  "value": 171,
                  "count": 12,
                  "selected": false
                },
                {
                  "name": "Ties and Pocket Square",
                  "value": 173,
                  "count": 173,
                  "selected": false
                },
                {
                  "name": "Lapel Pin",
                  "value": 175,
                  "count": 36,
                  "selected": false
                },
                {
                  "name": "Brooch",
                  "value": 176,
                  "count": 178,
                  "selected": false
                },
                {
                  "name": "Collar Pin",
                  "value": 177,
                  "count": 29,
                  "selected": false
                },
                {"name": "Shawl", "value": 183, "count": 35, "selected": false},
                {
                  "name": "Kalangi",
                  "value": 292,
                  "count": 48,
                  "selected": false
                },
                {"name": "Safa", "value": 304, "count": 60, "selected": false},
                {"name": "Others", "value": 317, "count": 67, "selected": false}
              ]
            },
            {
              "selectedCount": 0,
              "name": "Footwear",
              "value": 161,
              "count": 133,
              "selected": false,
              "field": "sub_category_id"
            }
          ]
        },
        {
          "value": 5,
          "selectedCount": 0,
          "name": "Jewellery",
          "list": [
            {
              "selectedCount": 0,
              "name": "Bangles",
              "value": 17,
              "count": 183,
              "selected": false,
              "field": "sub_category_id"
            },
            {
              "selectedCount": 0,
              "name": "Bracelets",
              "value": 18,
              "count": 382,
              "selected": false,
              "field": "sub_category_id"
            },
            {
              "selectedCount": 0,
              "name": "Brooch",
              "value": 181,
              "count": 14,
              "selected": false,
              "field": "sub_category_id"
            },
            {
              "selectedCount": 0,
              "name": "Jewellery Sets",
              "value": 20,
              "count": 1056,
              "selected": false,
              "field": "sub_category_id"
            },
            {
              "selectedCount": 0,
              "name": "Kamarbandh",
              "value": 117,
              "count": 1,
              "selected": false,
              "field": "sub_category_id"
            },
            {
              "selectedCount": 0,
              "name": "Maangtikkas",
              "value": 24,
              "count": 188,
              "selected": false,
              "field": "sub_category_id"
            },
            {
              "selectedCount": 0,
              "name": "Mathapattis",
              "value": 110,
              "count": 45,
              "selected": false,
              "field": "sub_category_id"
            },
            {
              "selectedCount": 0,
              "name": "Nose rings",
              "value": 156,
              "count": 63,
              "selected": false,
              "field": "sub_category_id"
            },
            {
              "selectedCount": 0,
              "name": "Others",
              "value": 278,
              "count": 37,
              "selected": false,
              "field": "sub_category_id"
            },
            {
              "selectedCount": 0,
              "name": "Passas",
              "value": 23,
              "count": 30,
              "selected": false,
              "field": "sub_category_id"
            },
            {
              "selectedCount": 0,
              "name": "Payals",
              "value": 111,
              "count": 10,
              "selected": false,
              "field": "sub_category_id"
            },
            {
              "selectedCount": 0,
              "name": "Rings",
              "value": 19,
              "count": 444,
              "selected": false,
              "field": "sub_category_id"
            },
            {
              "selectedCount": 0,
              "name": "Earrings",
              "value": 14,
              "count": 2109,
              "selected": false,
              "field": "sub_category_id",
              "list": [
                {
                  "name": "Chandbalis",
                  "value": 252,
                  "count": 161,
                  "selected": false
                },
                {
                  "name": "Chandeliers",
                  "value": 253,
                  "count": 26,
                  "selected": false
                },
                {
                  "name": "Contemporary",
                  "value": 254,
                  "count": 111,
                  "selected": false
                },
                {
                  "name": "Danglers & drops",
                  "value": 255,
                  "count": 971,
                  "selected": false
                },
                {
                  "name": "Ear cuffs",
                  "value": 256,
                  "count": 10,
                  "selected": false
                },
                {
                  "name": "Hoops",
                  "value": 257,
                  "count": 111,
                  "selected": false
                },
                {
                  "name": "Jhumkas",
                  "value": 258,
                  "count": 189,
                  "selected": false
                },
                {
                  "name": "Long Earrings",
                  "value": 259,
                  "count": 73,
                  "selected": false
                },
                {
                  "name": "Statement Earring",
                  "value": 260,
                  "count": 20,
                  "selected": false
                },
                {
                  "name": "Stud earrings",
                  "value": 261,
                  "count": 430,
                  "selected": false
                }
              ]
            },
            {
              "selectedCount": 0,
              "name": "Necklaces",
              "value": 21,
              "count": 1061,
              "selected": false,
              "field": "sub_category_id",
              "list": [
                {
                  "name": "Contemporary",
                  "value": 267,
                  "count": 323,
                  "selected": false
                },
                {
                  "name": "Choker",
                  "value": 268,
                  "count": 259,
                  "selected": false
                },
                {
                  "name": "Long Necklace",
                  "value": 269,
                  "count": 189,
                  "selected": false
                },
                {
                  "name": "Pendant Necklaces",
                  "value": 270,
                  "count": 270,
                  "selected": false
                }
              ]
            }
          ]
        },
        {
          "value": 6,
          "selectedCount": 0,
          "name": "Accessories",
          "list": [
            {
              "selectedCount": 0,
              "name": "Fragrances",
              "value": 321,
              "count": 26,
              "selected": false,
              "field": "sub_category_id"
            },
            {
              "selectedCount": 0,
              "name": "Mask Chains",
              "value": 316,
              "count": 6,
              "selected": false,
              "field": "sub_category_id"
            },
            {
              "selectedCount": 0,
              "name": "Others",
              "value": 314,
              "count": 5,
              "selected": false,
              "field": "sub_category_id"
            },
            {
              "selectedCount": 0,
              "name": "Shawls",
              "value": 226,
              "count": 70,
              "selected": false,
              "field": "sub_category_id"
            },
            {
              "selectedCount": 0,
              "name": "Stoles & Scarves",
              "value": 227,
              "count": 252,
              "selected": false,
              "field": "sub_category_id"
            },
            {
              "selectedCount": 0,
              "name": "Handbags",
              "value": 114,
              "count": 1454,
              "selected": false,
              "field": "sub_category_id",
              "list": [
                {
                  "name": "Potlis",
                  "value": 115,
                  "count": 376,
                  "selected": false
                },
                {"name": "Bags", "value": 116, "count": 363, "selected": false},
                {
                  "name": "Pouches",
                  "value": 163,
                  "count": 33,
                  "selected": false
                },
                {
                  "name": "Clutches",
                  "value": 8,
                  "count": 682,
                  "selected": false
                }
              ]
            },
            {
              "selectedCount": 0,
              "name": "Footwear",
              "value": 6,
              "count": 1874,
              "selected": false,
              "field": "sub_category_id",
              "list": [
                {
                  "name": "Heels",
                  "value": 109,
                  "count": 395,
                  "selected": false
                },
                {
                  "name": "Wedges",
                  "value": 15,
                  "count": 174,
                  "selected": false
                },
                {
                  "name": "Juttis",
                  "value": 16,
                  "count": 441,
                  "selected": false
                },
                {"name": "Flats", "value": 26, "count": 857, "selected": false},
                {
                  "name": "Sneakers",
                  "value": 310,
                  "count": 4,
                  "selected": false
                }
              ]
            },
            {
              "selectedCount": 0,
              "name": "Hairbands",
              "value": 11,
              "count": 282,
              "selected": false,
              "field": "sub_category_id"
            },
            {
              "selectedCount": 0,
              "name": "Gift Boxes",
              "value": 12,
              "count": 10,
              "selected": false,
              "field": "sub_category_id"
            },
            {
              "selectedCount": 0,
              "name": "Belts",
              "value": 108,
              "count": 96,
              "selected": false,
              "field": "sub_category_id"
            },
            {
              "selectedCount": 0,
              "name": "Masks",
              "value": 280,
              "count": 34,
              "selected": false,
              "field": "sub_category_id"
            }
          ]
        },
        {
          "selectedCount": 0,
          "name": "Kids",
          "value": 7,
          "list": [
            {
              "selectedCount": 0,
              "name": "Accessories",
              "value": 319,
              "count": 20,
              "selected": false,
              "field": "sub_category_id"
            },
            {
              "selectedCount": 0,
              "name": "Bath",
              "value": 290,
              "count": 6,
              "selected": false,
              "field": "sub_category_id"
            },
            {
              "selectedCount": 0,
              "name": "Girls",
              "value": 129,
              "count": 1227,
              "selected": false,
              "field": "sub_category_id",
              "list": [
                {
                  "name": "Kurta Sets",
                  "value": 135,
                  "count": 269,
                  "selected": false
                },
                {"name": "Gowns", "value": 136, "count": 40, "selected": false},
                {
                  "name": "Dresses",
                  "value": 137,
                  "count": 350,
                  "selected": false
                },
                {
                  "name": "Jackets",
                  "value": 138,
                  "count": 6,
                  "selected": false
                },
                {
                  "name": "Lehengas",
                  "value": 139,
                  "count": 196,
                  "selected": false
                },
                {
                  "name": "Jumpsuits",
                  "value": 140,
                  "count": 42,
                  "selected": false
                },
                {
                  "name": "Skirts Sets",
                  "value": 141,
                  "count": 31,
                  "selected": false
                },
                {"name": "pants", "value": 142, "count": 4, "selected": false},
                {
                  "name": "Sleepwear",
                  "value": 188,
                  "count": 56,
                  "selected": false
                },
                {
                  "name": "Pant Sets",
                  "value": 198,
                  "count": 53,
                  "selected": false
                },
                {"name": "Sarees", "value": 276, "count": 7, "selected": false},
                {
                  "name": "Tunics & Kurtis",
                  "value": 277,
                  "count": 33,
                  "selected": false
                },
                {
                  "name": "Footwear",
                  "value": 308,
                  "count": 1,
                  "selected": false
                },
                {
                  "name": "Hair Accessories",
                  "value": 309,
                  "count": 123,
                  "selected": false
                },
                {
                  "name": "Accessories",
                  "value": 311,
                  "count": 5,
                  "selected": false
                },
                {
                  "name": "Footwear",
                  "value": 322,
                  "count": 7,
                  "selected": false
                }
              ]
            },
            {
              "selectedCount": 0,
              "name": "Boys",
              "value": 130,
              "count": 671,
              "selected": false,
              "field": "sub_category_id",
              "list": [
                {
                  "name": "Kurta Sets",
                  "value": 131,
                  "count": 440,
                  "selected": false
                },
                {
                  "name": "Sherwanis",
                  "value": 132,
                  "count": 19,
                  "selected": false
                },
                {
                  "name": "Kurtas",
                  "value": 133,
                  "count": 40,
                  "selected": false
                },
                {
                  "name": "Shirts",
                  "value": 134,
                  "count": 84,
                  "selected": false
                },
                {
                  "name": "Jackets",
                  "value": 157,
                  "count": 18,
                  "selected": false
                },
                {"name": "Pants", "value": 158, "count": 16, "selected": false},
                {
                  "name": "Sleepwear",
                  "value": 187,
                  "count": 36,
                  "selected": false
                },
                {
                  "name": "Suits & Tuxedos",
                  "value": 189,
                  "count": 4,
                  "selected": false
                },
                {
                  "name": "Jumpers",
                  "value": 233,
                  "count": 5,
                  "selected": false
                },
                {"name": "Shoes", "value": 284, "count": 8, "selected": false}
              ]
            }
          ]
        },
        {
          "value": 8,
          "selectedCount": 0,
          "name": "Homeware",
          "list": [
            {
              "selectedCount": 0,
              "name": "Accent Furniture",
              "value": 323,
              "count": 12,
              "selected": false,
              "field": "sub_category_id"
            },
            {
              "selectedCount": 0,
              "name": "Rugs & Carpets",
              "value": 204,
              "count": 106,
              "selected": false,
              "field": "sub_category_id"
            },
            {
              "selectedCount": 0,
              "name": "Bed & Bath",
              "value": 203,
              "count": 68,
              "selected": false,
              "field": "sub_category_id",
              "list": [
                {
                  "name": "Bed Linen",
                  "value": 220,
                  "count": 57,
                  "selected": false
                },
                {"name": "Bath", "value": 338, "count": 11, "selected": false}
              ]
            },
            {
              "selectedCount": 0,
              "name": "Decor",
              "value": 333,
              "count": 554,
              "selected": false,
              "field": "sub_category_id",
              "list": [
                {
                  "name": "Wall Decor",
                  "value": 200,
                  "count": 179,
                  "selected": false
                },
                {
                  "name": "Table Decor",
                  "value": 273,
                  "count": 94,
                  "selected": false
                },
                {
                  "name": "Pots and Planters",
                  "value": 324,
                  "count": 35,
                  "selected": false
                },
                {
                  "name": "Art Prints",
                  "value": 334,
                  "count": 11,
                  "selected": false
                },
                {
                  "name": "Candles & Home Fragrances",
                  "value": 336,
                  "count": 229,
                  "selected": false
                },
                {
                  "name": "Pooja Essentials",
                  "value": 339,
                  "count": 6,
                  "selected": false
                }
              ]
            },
            {
              "selectedCount": 0,
              "name": "Kitchen & Dining",
              "value": 201,
              "count": 852,
              "selected": false,
              "field": "sub_category_id",
              "list": [
                {
                  "name": "Dinnerware",
                  "value": 216,
                  "count": 132,
                  "selected": false
                },
                {
                  "name": "Table & Kitchen Linen",
                  "value": 217,
                  "count": 247,
                  "selected": false
                },
                {
                  "name": "Bar & Drinkware",
                  "value": 222,
                  "count": 105,
                  "selected": false
                },
                {
                  "name": "Serveware",
                  "value": 299,
                  "count": 213,
                  "selected": false
                },
                {
                  "name": "Cutlery",
                  "value": 327,
                  "count": 57,
                  "selected": false
                },
                {
                  "name": "Table Accessories",
                  "value": 328,
                  "count": 98,
                  "selected": false
                }
              ]
            },
            {
              "selectedCount": 0,
              "name": "Lightings",
              "value": 202,
              "count": 41,
              "selected": false,
              "field": "sub_category_id",
              "list": [
                {
                  "name": "Table Lamps",
                  "value": 215,
                  "count": 7,
                  "selected": false
                },
                {
                  "name": "Wall Sconce",
                  "value": 265,
                  "count": 2,
                  "selected": false
                },
                {
                  "name": "Ceiling Lamps",
                  "value": 337,
                  "count": 32,
                  "selected": false
                }
              ]
            },
            {
              "selectedCount": 0,
              "name": "Housekeeping & Organisers",
              "value": 223,
              "count": 20,
              "selected": false,
              "field": "sub_category_id",
              "list": [
                {
                  "name": "Koi to bhi Covers terko kya Apne kaam se kam rakh",
                  "value": 332,
                  "count": 244,
                  "selected": false
                }
              ]
            },
            {
              "selectedCount": 0,
              "name": "Home Furnishings",
              "value": 325,
              "count": 244,
              "selected": false,
              "field": "sub_category_id",
              "list": [
                {
                  "name": "Cushion Covers",
                  "value": 332,
                  "count": 244,
                  "selected": false
                }
              ]
            },
            {
              "selectedCount": 0,
              "name": "Kids",
              "value": 341,
              "count": 16,
              "selected": false,
              "field": "sub_category_id",
              "list": [
                {
                  "name": "Baby Bedding",
                  "value": 340,
                  "count": 16,
                  "selected": false
                }
              ]
            }
          ]
        }
      ]
    },
    {
      "name": "Designers",
      "field": "designer_id",
      "selection": "multiple",
      "nested": false,
      "selectedCount": 0,
      "list": [
        {
          "name": "3DM Lifestyle",
          "value": 2842,
          "count": 21,
          "selected": false
        },
        {
          "name": "431-88 by Shweta Kapur",
          "value": 1304,
          "count": 2,
          "selected": false
        },
        {"name": "5 elements", "value": 1182, "count": 304, "selected": false},
        {
          "name": "A!A By Abrar Ali",
          "value": 2952,
          "count": 3,
          "selected": false
        },
        {"name": "AMPM", "value": 205, "count": 242, "selected": false},
        {"name": "APZ", "value": 2861, "count": 1, "selected": false},
        {"name": "Aakaar", "value": 2771, "count": 52, "selected": false},
        {"name": "Aalyxir", "value": 257, "count": 2, "selected": false},
        {"name": "Aanchal Sayal", "value": 1998, "count": 1, "selected": false},
        {"name": "Aapro", "value": 2858, "count": 1, "selected": false},
        {
          "name": "Aarke Ritu Kumar",
          "value": 2749,
          "count": 81,
          "selected": false
        },
        {
          "name": "Aartivijay Gupta",
          "value": 151,
          "count": 5,
          "selected": false
        },
        {
          "name": "Aayushi Maniar",
          "value": 2143,
          "count": 8,
          "selected": false
        },
        {"name": "Abbaran", "value": 2522, "count": 69, "selected": false},
        {"name": "Abhi Singh", "value": 1293, "count": 1, "selected": false},
        {
          "name": "Abhijeet Khanna",
          "value": 228,
          "count": 2,
          "selected": false
        },
        {
          "name": "Abhinav Mishra",
          "value": 1072,
          "count": 2,
          "selected": false
        },
        {
          "name": "Abhishek Sharma",
          "value": 458,
          "count": 2,
          "selected": false
        },
        {"name": "Abkasa", "value": 2357, "count": 39, "selected": false},
        {
          "name": "Abraham & Thakore",
          "value": 306,
          "count": 2,
          "selected": false
        },
        {"name": "Adara Khan", "value": 311, "count": 125, "selected": false},
        {
          "name": "Adi By Aditya Khandelwl",
          "value": 1326,
          "count": 1,
          "selected": false
        },
        {"name": "Aditi Beriwala", "value": 459, "count": 7, "selected": false},
        {"name": "Aditi Gupta", "value": 467, "count": 2, "selected": false},
        {
          "name": "Adora by Ankita",
          "value": 663,
          "count": 1,
          "selected": false
        },
        {"name": "Advait", "value": 2617, "count": 1, "selected": false},
        {"name": "Agape", "value": 2846, "count": 1, "selected": false},
        {"name": "Ahaanya", "value": 2793, "count": 142, "selected": false},
        {"name": "Aham-Vayam", "value": 2684, "count": 131, "selected": false},
        {"name": "Aiman", "value": 258, "count": 8, "selected": false},
        {"name": "Aisha Rao", "value": 1673, "count": 1, "selected": false},
        {
          "name": "Ajiesh Oberoi",
          "value": 2065,
          "count": 11,
          "selected": false
        },
        {
          "name": "Ajooni Jewels",
          "value": 2932,
          "count": 20,
          "selected": false
        },
        {
          "name": "Akanksha Gajria",
          "value": 244,
          "count": 1,
          "selected": false
        },
        {"name": "Aksh", "value": 131, "count": 1, "selected": false},
        {
          "name": "All Boy Couture",
          "value": 2767,
          "count": 2,
          "selected": false
        },
        {"name": "Amama", "value": 2493, "count": 2, "selected": false},
        {"name": "Ame", "value": 2551, "count": 36, "selected": false},
        {"name": "Amit Aggarwal", "value": 115, "count": 2, "selected": false},
        {"name": "Amit GT", "value": 541, "count": 1, "selected": false},
        {"name": "Amita Gupta", "value": 1988, "count": 61, "selected": false},
        {
          "name": "Amrita Artisanal Clothing",
          "value": 2047,
          "count": 1,
          "selected": false
        },
        {"name": "Amyra", "value": 2466, "count": 82, "selected": false},
        {"name": "Anaash", "value": 2655, "count": 1, "selected": false},
        {"name": "Anamika Khanna", "value": 246, "count": 1, "selected": false},
        {
          "name": "Anantaa by Roohi",
          "value": 2195,
          "count": 8,
          "selected": false
        },
        {"name": "Anavila", "value": 30, "count": 21, "selected": false},
        {
          "name": "Anaya by Akruthi",
          "value": 2272,
          "count": 2,
          "selected": false
        },
        {
          "name": "Anayah Jewellery",
          "value": 2254,
          "count": 1,
          "selected": false
        },
        {"name": "And Also", "value": 2988, "count": 31, "selected": false},
        {
          "name": "Aneesh Agarwaal",
          "value": 122,
          "count": 1,
          "selected": false
        },
        {"name": "Angad Singh", "value": 2339, "count": 3, "selected": false},
        {"name": "Angry Owl", "value": 2614, "count": 1, "selected": false},
        {"name": "Anita Dongre", "value": 300, "count": 8, "selected": false},
        {
          "name": "Anita Dongre Grassroot",
          "value": 1080,
          "count": 1,
          "selected": false
        },
        {"name": "Anjali Jain", "value": 537, "count": 1, "selected": false},
        {
          "name": "Anjali Kanwar",
          "value": 2958,
          "count": 14,
          "selected": false
        },
        {"name": "Anju Modi", "value": 208, "count": 1, "selected": false},
        {
          "name": "Ankit V Kapoor",
          "value": 2206,
          "count": 4,
          "selected": false
        },
        {"name": "Ankita", "value": 608, "count": 9, "selected": false},
        {"name": "Anomaly", "value": 295, "count": 1, "selected": false},
        {"name": "Anome", "value": 607, "count": 1, "selected": false},
        {"name": "Antar Agni", "value": 2124, "count": 4, "selected": false},
        {
          "name": "Anupraas by Nishant and Rahul",
          "value": 746,
          "count": 5,
          "selected": false
        },
        {"name": "Anurag Gupta", "value": 2073, "count": 1, "selected": false},
        {
          "name": "Anushree Reddy",
          "value": 245,
          "count": 18,
          "selected": false
        },
        {
          "name": "Apeksha Jain Label",
          "value": 2865,
          "count": 1,
          "selected": false
        },
        {"name": "Aprajita Toor", "value": 225, "count": 2, "selected": false},
        {"name": "Apricot kids", "value": 2428, "count": 24, "selected": false},
        {"name": "Archana Jaju", "value": 2186, "count": 3, "selected": false},
        {
          "name": "Archana Kochhar",
          "value": 2613,
          "count": 41,
          "selected": false
        },
        {"name": "Archana Shah", "value": 2278, "count": 6, "selected": false},
        {
          "name": "Arcvsh by Pallavi Singh",
          "value": 1866,
          "count": 3,
          "selected": false
        },
        {
          "name": "Arihant Rai Sinha",
          "value": 2592,
          "count": 949,
          "selected": false
        },
        {
          "name": "Ariyana Couture",
          "value": 1970,
          "count": 62,
          "selected": false
        },
        {"name": "Arjan Dugal", "value": 1027, "count": 4, "selected": false},
        {"name": "Armen & Co", "value": 2714, "count": 1, "selected": false},
        {"name": "Arnimaa", "value": 2881, "count": 68, "selected": false},
        {"name": "Aroka", "value": 2982, "count": 1, "selected": false},
        {"name": "Arpan Vohra", "value": 126, "count": 7, "selected": false},
        {"name": "Arpita Mehta", "value": 26, "count": 14, "selected": false},
        {"name": "Art Karat", "value": 1616, "count": 1, "selected": false},
        {"name": "Arte-Alter", "value": 2289, "count": 1, "selected": false},
        {"name": "Artimen", "value": 1315, "count": 11, "selected": false},
        {"name": "Artless", "value": 2692, "count": 50, "selected": false},
        {
          "name": "Aryavir Malhotra",
          "value": 2597,
          "count": 709,
          "selected": false
        },
        {"name": "Aseem Kapoor", "value": 2262, "count": 3, "selected": false},
        {"name": "Asha Gautam", "value": 1221, "count": 1, "selected": false},
        {"name": "Asra", "value": 2632, "count": 8, "selected": false},
        {"name": "Astha Narang", "value": 176, "count": 2, "selected": false},
        {"name": "Auraa Trends", "value": 1981, "count": 87, "selected": false},
        {"name": "Avalipt", "value": 3021, "count": 4, "selected": false},
        {"name": "Ayaka", "value": 2550, "count": 1, "selected": false},
        {"name": "Ayinat", "value": 1979, "count": 1, "selected": false},
        {
          "name": "Ba Ba Baby clothing co",
          "value": 2927,
          "count": 1,
          "selected": false
        },
        {
          "name": "Babita Malkani",
          "value": 645,
          "count": 44,
          "selected": false
        },
        {"name": "Bagichi", "value": 2582, "count": 1, "selected": false},
        {"name": "Bairaas", "value": 2980, "count": 96, "selected": false},
        {"name": "Baise Gaba", "value": 2652, "count": 5, "selected": false},
        {
          "name": "Balance by Rohit Bal",
          "value": 2806,
          "count": 38,
          "selected": false
        },
        {"name": "Banana Bee", "value": 2027, "count": 6, "selected": false},
        {"name": "Barahmasi", "value": 2165, "count": 18, "selected": false},
        {
          "name": "Barkha 'N' Sonzal",
          "value": 116,
          "count": 1,
          "selected": false
        },
        {
          "name": "Basanti - Kapde Aur Koffee",
          "value": 2410,
          "count": 14,
          "selected": false
        },
        {"name": "Basanti Pret", "value": 3053, "count": 16, "selected": false},
        {
          "name": "Bauble Bazaar",
          "value": 2029,
          "count": 15,
          "selected": false
        },
        {"name": "Bblingg", "value": 1035, "count": 1, "selected": false},
        {"name": "Be Chic", "value": 369, "count": 1, "selected": false},
        {"name": "Begum Pret", "value": 2415, "count": 13, "selected": false},
        {"name": "Beige", "value": 2334, "count": 1, "selected": false},
        {"name": "Belsi's", "value": 1833, "count": 87, "selected": false},
        {
          "name": "Bhaavya Bhatnagar",
          "value": 189,
          "count": 1,
          "selected": false
        },
        {
          "name": "Bhairavi Jaikishan",
          "value": 1002,
          "count": 43,
          "selected": false
        },
        {
          "name": "Bhanuni By Jyoti",
          "value": 253,
          "count": 2,
          "selected": false
        },
        {"name": "Bhavik Shah", "value": 2227, "count": 2, "selected": false},
        {"name": "Bhumika Sharma", "value": 177, "count": 1, "selected": false},
        {"name": "Bhusattva", "value": 1272, "count": 2, "selected": false},
        {"name": "Bloni", "value": 967, "count": 1, "selected": false},
        {
          "name": "Bloomers by Amrita M",
          "value": 2293,
          "count": 7,
          "selected": false
        },
        {"name": "Bohame", "value": 1274, "count": 10, "selected": false},
        {"name": "Born Flash", "value": 2847, "count": 115, "selected": false},
        {"name": "Boteh", "value": 2560, "count": 1, "selected": false},
        {"name": "Brashbug", "value": 2058, "count": 15, "selected": false},
        {"name": "Bridlen", "value": 2196, "count": 3, "selected": false},
        {"name": "Brij", "value": 2169, "count": 1, "selected": false},
        {
          "name": "Bubber Couture",
          "value": 610,
          "count": 28,
          "selected": false
        },
        {"name": "Byb Premium", "value": 2393, "count": 47, "selected": false},
        {"name": "Capisvirleo", "value": 2789, "count": 2, "selected": false},
        {
          "name": "Chambray & Co.",
          "value": 1111,
          "count": 6,
          "selected": false
        },
        {"name": "Champscloset", "value": 2173, "count": 45, "selected": false},
        {"name": "Chandni Rai", "value": 488, "count": 1, "selected": false},
        {"name": "Chandrima", "value": 2095, "count": 1, "selected": false},
        {
          "name": "Chaotiq By Arti",
          "value": 1994,
          "count": 17,
          "selected": false
        },
        {"name": "Charkhee", "value": 2218, "count": 102, "selected": false},
        {
          "name": "Charu and Vasundhara",
          "value": 2233,
          "count": 2,
          "selected": false
        },
        {
          "name": "Chatenya Mittal",
          "value": 343,
          "count": 2,
          "selected": false
        },
        {
          "name": "Chhavi's Jewels",
          "value": 2084,
          "count": 16,
          "selected": false
        },
        {
          "name": "Chhavvi Aggarwal",
          "value": 296,
          "count": 7,
          "selected": false
        },
        {
          "name": "Chhaya Mehrotra",
          "value": 944,
          "count": 1,
          "selected": false
        },
        {"name": "Chillosophy", "value": 2125, "count": 2, "selected": false},
        {
          "name": "Chiquitita Kids Couture by Payal Bahl",
          "value": 1198,
          "count": 2,
          "selected": false
        },
        {"name": "Choko", "value": 2999, "count": 93, "selected": false},
        {"name": "Chola", "value": 1960, "count": 15, "selected": false},
        {"name": "Chrkha", "value": 2686, "count": 1, "selected": false},
        {
          "name": "Cilwana Studio",
          "value": 3052,
          "count": 37,
          "selected": false
        },
        {"name": "Cin Cin", "value": 2645, "count": 76, "selected": false},
        {
          "name": "Clay Essentials",
          "value": 3066,
          "count": 5,
          "selected": false
        },
        {"name": "Closet Code", "value": 2306, "count": 54, "selected": false},
        {"name": "Coco", "value": 2335, "count": 10, "selected": false},
        {"name": "CocoBee", "value": 2926, "count": 27, "selected": false},
        {
          "name": "Cocovey Homes",
          "value": 2901,
          "count": 73,
          "selected": false
        },
        {"name": "Confluence", "value": 1071, "count": 3, "selected": false},
        {
          "name": "Contrast By Parth",
          "value": 2555,
          "count": 1,
          "selected": false
        },
        {"name": "Coral Haze", "value": 1894, "count": 10, "selected": false},
        {"name": "Cord", "value": 2246, "count": 4, "selected": false},
        {
          "name": "Corpora Studio",
          "value": 2395,
          "count": 45,
          "selected": false
        },
        {
          "name": "Cosa Nostraa",
          "value": 2003,
          "count": 424,
          "selected": false
        },
        {
          "name": "Cosy Dwellings",
          "value": 3010,
          "count": 30,
          "selected": false
        },
        {"name": "Couché", "value": 2891, "count": 9, "selected": false},
        {"name": "Countrymade", "value": 2112, "count": 2, "selected": false},
        {
          "name": "Couture by Niharika",
          "value": 1835,
          "count": 1,
          "selected": false
        },
        {"name": "Crimzon", "value": 123, "count": 4, "selected": false},
        {"name": "Crystal Craft", "value": 114, "count": 1, "selected": false},
        {
          "name": "Curio Cottage",
          "value": 2622,
          "count": 131,
          "selected": false
        },
        {"name": "D'oro", "value": 2039, "count": 454, "selected": false},
        {
          "name": "Daddy's Princess",
          "value": 209,
          "count": 1,
          "selected": false
        },
        {"name": "Daisie", "value": 2574, "count": 49, "selected": false},
        {"name": "Daljit Sudan", "value": 2677, "count": 1, "selected": false},
        {
          "name": "Darshika Menswear",
          "value": 2729,
          "count": 12,
          "selected": false
        },
        {"name": "Dash and Dot", "value": 2701, "count": 11, "selected": false},
        {"name": "Debyani + Co", "value": 299, "count": 6, "selected": false},
        {
          "name": "Deepika Arora",
          "value": 2308,
          "count": 67,
          "selected": false
        },
        {"name": "Deepthee", "value": 2097, "count": 1, "selected": false},
        {"name": "Deme X Kalki", "value": 2715, "count": 1, "selected": false},
        {
          "name": "Deme by Gabriella",
          "value": 24,
          "count": 10,
          "selected": false
        },
        {
          "name": "Desert Shine by Sulochana Jangir",
          "value": 671,
          "count": 4,
          "selected": false
        },
        {"name": "Dev R Nil", "value": 129, "count": 2, "selected": false},
        {"name": "Devina Juneja", "value": 1237, "count": 1, "selected": false},
        {"name": "Devnaagri", "value": 247, "count": 2, "selected": false},
        {
          "name": "Devyani Mehrotra",
          "value": 2316,
          "count": 7,
          "selected": false
        },
        {"name": "Dhruv Kapoor", "value": 1234, "count": 1, "selected": false},
        {"name": "Dhruv Vaish", "value": 109, "count": 16, "selected": false},
        {
          "name": "Dilnaz Karbhary",
          "value": 542,
          "count": 63,
          "selected": false
        },
        {"name": "Diosa Jewels", "value": 1301, "count": 7, "selected": false},
        {
          "name": "Disha Muchhala",
          "value": 2526,
          "count": 2,
          "selected": false
        },
        {"name": "Divya Kanakia", "value": 365, "count": 1, "selected": false},
        {"name": "Divya Reddy", "value": 197, "count": 1, "selected": false},
        {"name": "Divyam Mehta", "value": 349, "count": 4, "selected": false},
        {"name": "DiyaRajvvir", "value": 339, "count": 5, "selected": false},
        {"name": "Dmodot", "value": 1842, "count": 10, "selected": false},
        {"name": "Dolly J", "value": 317, "count": 2, "selected": false},
        {"name": "Domani", "value": 2373, "count": 1, "selected": false},
        {
          "name": "Don't Call Me Princess",
          "value": 2620,
          "count": 15,
          "selected": false
        },
        {"name": "Doodlage", "value": 715, "count": 66, "selected": false},
        {"name": "Dot", "value": 2114, "count": 10, "selected": false},
        {"name": "Dressfolk", "value": 3026, "count": 98, "selected": false},
        {
          "name": "Drishti & Zahabia",
          "value": 1968,
          "count": 5,
          "selected": false
        },
        {
          "name": "Dugran By Dugristyle",
          "value": 2845,
          "count": 31,
          "selected": false
        },
        {
          "name": "Dusala Shawls",
          "value": 2228,
          "count": 21,
          "selected": false
        },
        {"name": "Dyelogue", "value": 2323, "count": 4, "selected": false},
        {
          "name": "Echo by Tanya Arora",
          "value": 2594,
          "count": 2,
          "selected": false
        },
        {"name": "Eena", "value": 2496, "count": 62, "selected": false},
        {"name": "Ek Soot", "value": 1985, "count": 2, "selected": false},
        {"name": "Eka", "value": 474, "count": 2, "selected": false},
        {
          "name": "Ekathva Jaipur",
          "value": 2638,
          "count": 1,
          "selected": false
        },
        {"name": "Ekaya", "value": 1367, "count": 29, "selected": false},
        {"name": "Ekta Singh", "value": 2371, "count": 46, "selected": false},
        {"name": "Elemente", "value": 2697, "count": 1, "selected": false},
        {
          "name": "Eleven Brothers",
          "value": 2207,
          "count": 31,
          "selected": false
        },
        {"name": "Elm & Oak", "value": 3073, "count": 67, "selected": false},
        {"name": "Elysian Home", "value": 2925, "count": 26, "selected": false},
        {"name": "Emblaze", "value": 2564, "count": 13, "selected": false},
        {"name": "Enaarah", "value": 2453, "count": 1, "selected": false},
        {"name": "Enech", "value": 2135, "count": 22, "selected": false},
        {"name": "Esha Koul", "value": 496, "count": 3, "selected": false},
        {"name": "Eshaa Amiin", "value": 327, "count": 2, "selected": false},
        {
          "name": "Esme by Aashna Dalmia",
          "value": 2005,
          "count": 140,
          "selected": false
        },
        {"name": "Essem", "value": 165, "count": 3, "selected": false},
        {"name": "Eurumme", "value": 1079, "count": 1, "selected": false},
        {"name": "Ewaz", "value": 2888, "count": 1, "selected": false},
        {"name": "Fahd Khatri", "value": 489, "count": 1, "selected": false},
        {"name": "Fayon Kids", "value": 1026, "count": 26, "selected": false},
        {
          "name": "Feetoes Shoes",
          "value": 2572,
          "count": 48,
          "selected": false
        },
        {
          "name": "Flori By Sumiran",
          "value": 484,
          "count": 2,
          "selected": false
        },
        {"name": "Foot Fuel", "value": 2880, "count": 40, "selected": false},
        {"name": "Free Sparrow", "value": 1967, "count": 2, "selected": false},
        {"name": "Fuchsia", "value": 346, "count": 45, "selected": false},
        {
          "name": "Gargee Designers",
          "value": 2759,
          "count": 3,
          "selected": false
        },
        {"name": "Gaurav Katta", "value": 2019, "count": 2, "selected": false},
        {
          "name": "Gauri & Nainika",
          "value": 712,
          "count": 3,
          "selected": false
        },
        {"name": "Gaya", "value": 2295, "count": 2, "selected": false},
        {"name": "Geisha Designs", "value": 238, "count": 4, "selected": false},
        {
          "name": "Genes Lecoanet Hemant",
          "value": 2343,
          "count": 347,
          "selected": false
        },
        {"name": "Gewels by Mona", "value": 376, "count": 1, "selected": false},
        {"name": "Gin & Tonic", "value": 2838, "count": 33, "selected": false},
        {"name": "Gopi Vaid", "value": 280, "count": 17, "selected": false},
        {
          "name": "Gulabo Jaipur",
          "value": 2329,
          "count": 101,
          "selected": false
        },
        {
          "name": "Gulabo by Abu Sandeep",
          "value": 2148,
          "count": 10,
          "selected": false
        },
        {"name": "Gunu Sahni", "value": 2892, "count": 4, "selected": false},
        {"name": "H2H", "value": 2013, "count": 189, "selected": false},
        {
          "name": "Hair Drama Co.",
          "value": 2539,
          "count": 44,
          "selected": false
        },
        {"name": "Hairatt", "value": 2976, "count": 43, "selected": false},
        {"name": "HeSpoke", "value": 2973, "count": 3, "selected": false},
        {
          "name": "Heart Up My Sleeves",
          "value": 2590,
          "count": 16,
          "selected": false
        },
        {
          "name": "Heer-House Of Jewellery",
          "value": 2934,
          "count": 107,
          "selected": false
        },
        {
          "name": "Hemant and Nandita",
          "value": 323,
          "count": 1,
          "selected": false
        },
        {"name": "Hilo Design", "value": 2728, "count": 4, "selected": false},
        {
          "name": "Himani Punatar",
          "value": 2008,
          "count": 1,
          "selected": false
        },
        {"name": "Hoity Moppet", "value": 2639, "count": 1, "selected": false},
        {
          "name": "House Of Tuhina",
          "value": 2292,
          "count": 46,
          "selected": false
        },
        {"name": "House This", "value": 2971, "count": 153, "selected": false},
        {"name": "House of Eda", "value": 2471, "count": 1, "selected": false},
        {
          "name": "House of Fett",
          "value": 2472,
          "count": 110,
          "selected": false
        },
        {"name": "House of Her", "value": 2668, "count": 48, "selected": false},
        {"name": "House of Hiya", "value": 2578, "count": 1, "selected": false},
        {
          "name": "House of Kotwara",
          "value": 1191,
          "count": 2,
          "selected": false
        },
        {
          "name": "House of Neeba",
          "value": 3126,
          "count": 41,
          "selected": false
        },
        {"name": "House of Pink", "value": 2273, "count": 4, "selected": false},
        {"name": "House of Vian", "value": 173, "count": 79, "selected": false},
        {
          "name": "Hrisha Jewels",
          "value": 1902,
          "count": 82,
          "selected": false
        },
        {"name": "Huemn", "value": 224, "count": 13, "selected": false},
        {"name": "Hyperbole", "value": 2201, "count": 2, "selected": false},
        {"name": "I am Design", "value": 1600, "count": 1, "selected": false},
        {
          "name": "I am Trouble by KC",
          "value": 2111,
          "count": 20,
          "selected": false
        },
        {"name": "Ibai", "value": 2108, "count": 19, "selected": false},
        {"name": "Ikai", "value": 1995, "count": 1, "selected": false},
        {
          "name": "Ikshita Choudhary",
          "value": 2716,
          "count": 4,
          "selected": false
        },
        {"name": "Ilk", "value": 313, "count": 1, "selected": false},
        {"name": "Inej", "value": 2520, "count": 1, "selected": false},
        {"name": "Interpret", "value": 2530, "count": 29, "selected": false},
        {
          "name": "Irrau by Samir Mantri",
          "value": 2330,
          "count": 8,
          "selected": false
        },
        {"name": "Isha Mittal", "value": 2536, "count": 1, "selected": false},
        {"name": "Isharya", "value": 93, "count": 158, "selected": false},
        {"name": "Ishhaara", "value": 2886, "count": 99, "selected": false},
        {"name": "Itara", "value": 351, "count": 7, "selected": false},
        {"name": "Itraake", "value": 2658, "count": 4, "selected": false},
        {"name": "Itrana", "value": 1386, "count": 15, "selected": false},
        {"name": "Izzumi Mehta", "value": 2385, "count": 3, "selected": false},
        {"name": "J by Jannat", "value": 520, "count": 1, "selected": false},
        {
          "name": "Jade By Ashima",
          "value": 2478,
          "count": 6,
          "selected": false
        },
        {"name": "Jajobaa", "value": 768, "count": 62, "selected": false},
        {
          "name": "Jasmine And Alaia",
          "value": 2498,
          "count": 37,
          "selected": false
        },
        {"name": "Jatin Malik", "value": 2409, "count": 43, "selected": false},
        {"name": "Jelly Jones", "value": 2653, "count": 41, "selected": false},
        {"name": "Joey & Pooh", "value": 2862, "count": 25, "selected": false},
        {
          "name": "Joules by Radhika",
          "value": 2041,
          "count": 221,
          "selected": false
        },
        {
          "name": "Juanita by Shubhda",
          "value": 2181,
          "count": 5,
          "selected": false
        },
        {
          "name": "Jubinav Chadha",
          "value": 2813,
          "count": 1,
          "selected": false
        },
        {"name": "Julie", "value": 1275, "count": 8, "selected": false},
        {
          "name": "Just Shradha's",
          "value": 154,
          "count": 64,
          "selected": false
        },
        {"name": "Jutti Choo", "value": 1900, "count": 7, "selected": false},
        {"name": "Jutti Express", "value": 2966, "count": 1, "selected": false},
        {
          "name": "Jyoti Sachdev Iyer",
          "value": 2127,
          "count": 11,
          "selected": false
        },
        {"name": "Kaari", "value": 2260, "count": 3, "selected": false},
        {"name": "Kaeros", "value": 2189, "count": 43, "selected": false},
        {"name": "Kaha", "value": 2475, "count": 1, "selected": false},
        {"name": "Kai Resortwear", "value": 927, "count": 3, "selected": false},
        {"name": "Kaksh Studio", "value": 3115, "count": 21, "selected": false},
        {
          "name": "Kalakaari By Sagarika",
          "value": 2877,
          "count": 4,
          "selected": false
        },
        {"name": "Kalista", "value": 281, "count": 7, "selected": false},
        {"name": "Kaltheos", "value": 2288, "count": 79, "selected": false},
        {"name": "Kameez", "value": 2760, "count": 15, "selected": false},
        {"name": "Kanelle", "value": 522, "count": 32, "selected": false},
        {
          "name": "Kangana Trehan",
          "value": 2354,
          "count": 36,
          "selected": false
        },
        {
          "name": "Kanika Sharma",
          "value": 2179,
          "count": 62,
          "selected": false
        },
        {"name": "Kanvas", "value": 2732, "count": 9, "selected": false},
        {"name": "Kapardara", "value": 2432, "count": 1, "selected": false},
        {"name": "Karaj Jaipur", "value": 2524, "count": 50, "selected": false},
        {
          "name": "Karishma Khanduja Bareilly",
          "value": 2388,
          "count": 1,
          "selected": false
        },
        {
          "name": "Kartikeya India",
          "value": 596,
          "count": 1,
          "selected": false
        },
        {"name": "Karuna Deora", "value": 2893, "count": 9, "selected": false},
        {"name": "Kashmiraa", "value": 383, "count": 1, "selected": false},
        {
          "name": "Kasturi Kundal",
          "value": 2495,
          "count": 79,
          "selected": false
        },
        {
          "name": "Kasturi Tikmani",
          "value": 2745,
          "count": 1,
          "selected": false
        },
        {"name": "Kaveri", "value": 1930, "count": 1, "selected": false},
        {"name": "Kavita D", "value": 2180, "count": 9, "selected": false},
        {
          "name": "Keerthi Kadire",
          "value": 2396,
          "count": 10,
          "selected": false
        },
        {"name": "Kehiaa", "value": 2938, "count": 1, "selected": false},
        {"name": "Khadijeh", "value": 374, "count": 3, "selected": false},
        {"name": "Kharakapas", "value": 1207, "count": 4, "selected": false},
        {"name": "Khela", "value": 2627, "count": 25, "selected": false},
        {
          "name": "Khushboo Bagri",
          "value": 2252,
          "count": 1,
          "selected": false
        },
        {"name": "Khushi Jewels", "value": 187, "count": 11, "selected": false},
        {
          "name": "Khwaab by Sanjana Lakhani",
          "value": 2004,
          "count": 459,
          "selected": false
        },
        {
          "name": "Khwaab by Sanjana Lakhani- Men",
          "value": 2787,
          "count": 111,
          "selected": false
        },
        {"name": "Kiara", "value": 2484, "count": 8, "selected": false},
        {"name": "Kids Lane", "value": 1815, "count": 20, "selected": false},
        {"name": "Kinjal Modi", "value": 2761, "count": 1, "selected": false},
        {
          "name": "Kiran Uttam Ghosh",
          "value": 647,
          "count": 1,
          "selected": false
        },
        {
          "name": "Kirti Agarwal - Pret N Couture",
          "value": 1477,
          "count": 5,
          "selected": false
        },
        {
          "name": "Kisneel by Pam",
          "value": 1224,
          "count": 1,
          "selected": false
        },
        {"name": "Kista", "value": 211, "count": 22, "selected": false},
        {"name": "Kkarma", "value": 2053, "count": 5, "selected": false},
        {
          "name": "Knitting Doodles",
          "value": 2707,
          "count": 64,
          "selected": false
        },
        {"name": "KoAi", "value": 2123, "count": 3, "selected": false},
        {"name": "Kokommo", "value": 2420, "count": 1, "selected": false},
        {"name": "Kommal Sood", "value": 297, "count": 3, "selected": false},
        {"name": "Kora", "value": 1745, "count": 1, "selected": false},
        {
          "name": "Kora By Nilesh Mitesh",
          "value": 2825,
          "count": 3,
          "selected": false
        },
        {"name": "Kranberra", "value": 2873, "count": 54, "selected": false},
        {"name": "Kresha Lulla", "value": 521, "count": 3, "selected": false},
        {"name": "Krishna Mehta", "value": 210, "count": 6, "selected": false},
        {
          "name": "Kritika Murarka",
          "value": 2253,
          "count": 2,
          "selected": false
        },
        {
          "name": "Kshitij Jalori",
          "value": 2121,
          "count": 1,
          "selected": false
        },
        {"name": "Kunal Rawal", "value": 69, "count": 1, "selected": false},
        {
          "name": "Kunwaraniritu",
          "value": 1579,
          "count": 18,
          "selected": false
        },
        {"name": "La Fiza", "value": 2839, "count": 38, "selected": false},
        {"name": "Labbada", "value": 448, "count": 38, "selected": false},
        {
          "name": "Label Aishwaryrika",
          "value": 2648,
          "count": 13,
          "selected": false
        },
        {
          "name": "Label Deepti Bajaj",
          "value": 2595,
          "count": 20,
          "selected": false
        },
        {
          "name": "Label Earthen",
          "value": 2030,
          "count": 46,
          "selected": false
        },
        {"name": "Label Ne'chi", "value": 2515, "count": 5, "selected": false},
        {"name": "Label Neeti", "value": 3119, "count": 21, "selected": false},
        {"name": "Label Nitika", "value": 2521, "count": 1, "selected": false},
        {"name": "Label Reyya", "value": 3087, "count": 40, "selected": false},
        {"name": "Label Sneha", "value": 2680, "count": 14, "selected": false},
        {
          "name": "Lacquer Embassy",
          "value": 1404,
          "count": 161,
          "selected": false
        },
        {"name": "Lahario", "value": 2646, "count": 3, "selected": false},
        {"name": "Lajjoo C", "value": 342, "count": 1, "selected": false},
        {"name": "Latha Puttanna", "value": 444, "count": 3, "selected": false},
        {"name": "Lavanya Ahuja", "value": 2382, "count": 1, "selected": false},
        {"name": "Leela by A", "value": 2978, "count": 1, "selected": false},
        {"name": "Leh Studios", "value": 2438, "count": 2, "selected": false},
        {"name": "Leonish", "value": 2069, "count": 1, "selected": false},
        {"name": "Lil Angels", "value": 1283, "count": 51, "selected": false},
        {"name": "Lil Peacock", "value": 2235, "count": 4, "selected": false},
        {"name": "Lil Picks", "value": 2503, "count": 3, "selected": false},
        {
          "name": "Limerick by Abirr N' Nanki",
          "value": 461,
          "count": 16,
          "selected": false
        },
        {"name": "Line out line", "value": 2738, "count": 1, "selected": false},
        {"name": "Linen Bloom", "value": 2119, "count": 25, "selected": false},
        {
          "name": "Little Bansi",
          "value": 2662,
          "count": 134,
          "selected": false
        },
        {
          "name": "Little Boys Closet by Gunjan Khanijou",
          "value": 1417,
          "count": 7,
          "selected": false
        },
        {"name": "Little Brats", "value": 2444, "count": 55, "selected": false},
        {
          "name": "Little Luxury",
          "value": 2476,
          "count": 47,
          "selected": false
        },
        {
          "name": "Little Secrets",
          "value": 1749,
          "count": 38,
          "selected": false
        },
        {"name": "Little Stars", "value": 1588, "count": 21, "selected": false},
        {
          "name": "Little West Street",
          "value": 2209,
          "count": 6,
          "selected": false
        },
        {"name": "Littleens", "value": 2505, "count": 1, "selected": false},
        {"name": "Logam", "value": 2843, "count": 129, "selected": false},
        {
          "name": "Loka by Veerali Raveshia",
          "value": 2417,
          "count": 1,
          "selected": false
        },
        {
          "name": "Love The World Today",
          "value": 2764,
          "count": 34,
          "selected": false
        },
        {"name": "LoveMANA", "value": 3091, "count": 20, "selected": false},
        {"name": "Lovetobag", "value": 96, "count": 2, "selected": false},
        {
          "name": "Luxoro Formello",
          "value": 2264,
          "count": 6,
          "selected": false
        },
        {"name": "MJ Label", "value": 2964, "count": 72, "selected": false},
        {"name": "MNSH", "value": 3121, "count": 112, "selected": false},
        {"name": "Maaikid", "value": 2320, "count": 47, "selected": false},
        {
          "name": "Maayera Jaipur",
          "value": 2754,
          "count": 2,
          "selected": false
        },
        {"name": "Madiha Jaipur", "value": 1305, "count": 1, "selected": false},
        {
          "name": "Mae Jewellery By Neelu Kedia",
          "value": 2962,
          "count": 11,
          "selected": false
        },
        {"name": "Mahima Mahajan", "value": 243, "count": 4, "selected": false},
        {"name": "Maisara", "value": 780, "count": 41, "selected": false},
        {
          "name": "Maison Shefali",
          "value": 2300,
          "count": 11,
          "selected": false
        },
        {
          "name": "Mala and Kinnary",
          "value": 2603,
          "count": 1,
          "selected": false
        },
        {"name": "Malini Ramani", "value": 183, "count": 1, "selected": false},
        {"name": "Malleka", "value": 393, "count": 2, "selected": false},
        {"name": "Manan", "value": 2214, "count": 2, "selected": false},
        {
          "name": "Manasi Sengupta",
          "value": 384,
          "count": 2,
          "selected": false
        },
        {"name": "Mandira Wirk", "value": 301, "count": 13, "selected": false},
        {"name": "Mani Bhatia", "value": 1222, "count": 2, "selected": false},
        {"name": "Manika Nanda", "value": 726, "count": 1, "selected": false},
        {
          "name": "Manish Malhotra",
          "value": 171,
          "count": 1,
          "selected": false
        },
        {"name": "Manish Nagdeo", "value": 991, "count": 19, "selected": false},
        {"name": "Manor House", "value": 3018, "count": 1, "selected": false},
        {"name": "Mapxencars", "value": 543, "count": 1, "selected": false},
        {"name": "Masaba", "value": 223, "count": 7, "selected": false},
        {
          "name": "Masaya Jewellery",
          "value": 723,
          "count": 1,
          "selected": false
        },
        {"name": "Mason Home", "value": 2867, "count": 132, "selected": false},
        {"name": "Mathili's", "value": 378, "count": 6, "selected": false},
        {"name": "Mati", "value": 737, "count": 4, "selected": false},
        {"name": "Matsya", "value": 284, "count": 1, "selected": false},
        {
          "name": "Mayank Anand Shraddha Nigam",
          "value": 159,
          "count": 33,
          "selected": false
        },
        {
          "name": "Mayank Modi - Men",
          "value": 1892,
          "count": 6,
          "selected": false
        },
        {"name": "Meadow", "value": 2350, "count": 10, "selected": false},
        {"name": "Medha", "value": 2447, "count": 3, "selected": false},
        {"name": "Megha & Jigar", "value": 2072, "count": 1, "selected": false},
        {
          "name": "Meghna Panchmatia",
          "value": 2129,
          "count": 2,
          "selected": false
        },
        {"name": "Mehak Murpana", "value": 2480, "count": 9, "selected": false},
        {"name": "Mehraki", "value": 2986, "count": 10, "selected": false},
        {"name": "Mellowdrama", "value": 2275, "count": 1, "selected": false},
        {"name": "Mhysa", "value": 2822, "count": 21, "selected": false},
        {
          "name": "Mi Dulce An'ya",
          "value": 757,
          "count": 25,
          "selected": false
        },
        {"name": "Miakki", "value": 2012, "count": 31, "selected": false},
        {"name": "Miko Lolo", "value": 2683, "count": 62, "selected": false},
        {"name": "Mimamsaa", "value": 2344, "count": 7, "selected": false},
        {"name": "Minichic", "value": 2427, "count": 15, "selected": false},
        {"name": "Minikin", "value": 756, "count": 2, "selected": false},
        {
          "name": "Minime Organics",
          "value": 2365,
          "count": 2,
          "selected": false
        },
        {
          "name": "Mint N Oranges",
          "value": 192,
          "count": 14,
          "selected": false
        },
        {"name": "Miraki", "value": 2064, "count": 24, "selected": false},
        {"name": "Mishru", "value": 504, "count": 2, "selected": false},
        {"name": "Missprint", "value": 2855, "count": 11, "selected": false},
        {
          "name": "MisterSinister",
          "value": 3069,
          "count": 11,
          "selected": false
        },
        {"name": "Mitesh Lodha", "value": 1674, "count": 1, "selected": false},
        {"name": "Mockingbird", "value": 2849, "count": 1, "selected": false},
        {
          "name": "Moh-Maya by Disha Khatri",
          "value": 1408,
          "count": 30,
          "selected": false
        },
        {"name": "Moledro", "value": 2670, "count": 1, "selected": false},
        {
          "name": "Monisha Jaising",
          "value": 808,
          "count": 2,
          "selected": false
        },
        {"name": "Mool Organic", "value": 2294, "count": 1, "selected": false},
        {"name": "Mr Brat", "value": 2511, "count": 36, "selected": false},
        {"name": "Mr. Ajay Kumar", "value": 198, "count": 3, "selected": false},
        {"name": "Mrunalini Rao", "value": 335, "count": 2, "selected": false},
        {"name": "Mulmul", "value": 2166, "count": 10, "selected": false},
        {
          "name": "Munkee See Munkee Doo",
          "value": 994,
          "count": 1,
          "selected": false
        },
        {"name": "Myaara", "value": 2525, "count": 2, "selected": false},
        {"name": "Myoho", "value": 9, "count": 4, "selected": false},
        {"name": "NASO", "value": 3070, "count": 21, "selected": false},
        {
          "name": "NR by Nidhi Rathi",
          "value": 2679,
          "count": 518,
          "selected": false
        },
        {"name": "Na-Ka", "value": 2666, "count": 44, "selected": false},
        {"name": "Naaz By Noor", "value": 2265, "count": 22, "selected": false},
        {
          "name": "Nadaan Parindey",
          "value": 2440,
          "count": 3,
          "selected": false
        },
        {"name": "Nadine", "value": 2348, "count": 3, "selected": false},
        {
          "name": "Naintara Bajaj",
          "value": 2038,
          "count": 237,
          "selected": false
        },
        {"name": "NakhreWaali", "value": 3028, "count": 85, "selected": false},
        {
          "name": "Nakshikathaa - Homeware",
          "value": 2853,
          "count": 46,
          "selected": false
        },
        {"name": "Nakul Sen", "value": 180, "count": 2, "selected": false},
        {"name": "Namasya", "value": 2386, "count": 17, "selected": false},
        {
          "name": "Namrata Joshipura",
          "value": 163,
          "count": 4,
          "selected": false
        },
        {
          "name": "Nandita Thirani",
          "value": 2431,
          "count": 1,
          "selected": false
        },
        {"name": "Nautanky", "value": 709, "count": 32, "selected": false},
        {
          "name": "Nayaab by Aleezeh",
          "value": 2040,
          "count": 321,
          "selected": false
        },
        {
          "name": "Nayaab by Sonia",
          "value": 2807,
          "count": 1,
          "selected": false
        },
        {"name": "Nayantaara", "value": 2215, "count": 1, "selected": false},
        {
          "name": "Nayantara Couture",
          "value": 2204,
          "count": 4,
          "selected": false
        },
        {"name": "Nayna Kapoor", "value": 2872, "count": 1, "selected": false},
        {
          "name": "Nazaakat by Samara Singh",
          "value": 1355,
          "count": 293,
          "selected": false
        },
        {"name": "Nee & Oink", "value": 664, "count": 2, "selected": false},
        {"name": "Neeta Bhargava", "value": 470, "count": 1, "selected": false},
        {
          "name": "Neeta Boochra",
          "value": 2353,
          "count": 143,
          "selected": false
        },
        {"name": "Neeta Lulla", "value": 195, "count": 20, "selected": false},
        {
          "name": "Negra Elegante",
          "value": 2794,
          "count": 1,
          "selected": false
        },
        {"name": "Neha & Tarun", "value": 722, "count": 1, "selected": false},
        {
          "name": "Neha Gursahani",
          "value": 849,
          "count": 35,
          "selected": false
        },
        {"name": "Neha Khullar", "value": 720, "count": 86, "selected": false},
        {
          "name": "Neha Mehta Couture",
          "value": 943,
          "count": 2,
          "selected": false
        },
        {"name": "Neha Taneja", "value": 771, "count": 1, "selected": false},
        {
          "name": "Neora By Nehal Chopra",
          "value": 2810,
          "count": 1,
          "selected": false
        },
        {
          "name": "Nepra by Neha Goel",
          "value": 220,
          "count": 1,
          "selected": false
        },
        {
          "name": "Nero by Shaifali and Satya",
          "value": 2782,
          "count": 50,
          "selected": false
        },
        {"name": "Nesolo", "value": 2113, "count": 2, "selected": false},
        {
          "name": "Niamh By Kriti",
          "value": 2805,
          "count": 1,
          "selected": false
        },
        {"name": "Nidhi Bhandari", "value": 475, "count": 5, "selected": false},
        {"name": "Nidhi Yasha", "value": 2570, "count": 1, "selected": false},
        {
          "name": "Nidhika Shekhar",
          "value": 266,
          "count": 1,
          "selected": false
        },
        {
          "name": "Nidzign Couture",
          "value": 495,
          "count": 24,
          "selected": false
        },
        {"name": "Nigh Nigh", "value": 1755, "count": 1, "selected": false},
        {"name": "Nika 1.0", "value": 2916, "count": 1, "selected": false},
        {"name": "Nikasha", "value": 4, "count": 7, "selected": false},
        {
          "name": "Nikita Mhaisalkar",
          "value": 501,
          "count": 2,
          "selected": false
        },
        {
          "name": "Nikita Vishakha",
          "value": 2746,
          "count": 16,
          "selected": false
        },
        {"name": "Nimbus", "value": 2559, "count": 2, "selected": false},
        {
          "name": "Nine By Janine",
          "value": 2906,
          "count": 1,
          "selected": false
        },
        {"name": "Nirmooha", "value": 2479, "count": 11, "selected": false},
        {"name": "Nishar Ahmed", "value": 2448, "count": 1, "selected": false},
        {
          "name": "Nitara Dhanraj Label",
          "value": 2737,
          "count": 2,
          "selected": false
        },
        {
          "name": "Nitesh Singh Chauhan",
          "value": 2033,
          "count": 18,
          "selected": false
        },
        {"name": "Niti Bothra", "value": 2523, "count": 11, "selected": false},
        {"name": "Nitika Gujral", "value": 466, "count": 11, "selected": false},
        {
          "name": "Nitika Kanodia Gupta",
          "value": 836,
          "count": 1,
          "selected": false
        },
        {
          "name": "Nitin Bal Chauhan",
          "value": 662,
          "count": 2,
          "selected": false
        },
        {"name": "Nitya Bajaj", "value": 476, "count": 3, "selected": false},
        {"name": "Noonoo", "value": 2079, "count": 115, "selected": false},
        {"name": "Noor", "value": 2504, "count": 104, "selected": false},
        {
          "name": "Not So Serious By Pallavi Mohan",
          "value": 433,
          "count": 5,
          "selected": false
        },
        {"name": "Notebook", "value": 1291, "count": 47, "selected": false},
        {"name": "NoughtOne", "value": 2367, "count": 2, "selected": false},
        {"name": "Nuhh", "value": 2604, "count": 10, "selected": false},
        {"name": "Nupur Kanoi", "value": 2, "count": 2, "selected": false},
        {
          "name": "Nysa Home Accents",
          "value": 3035,
          "count": 22,
          "selected": false
        },
        {"name": "Oceedee", "value": 2062, "count": 4, "selected": false},
        {"name": "Ohaila Khan", "value": 305, "count": 3, "selected": false},
        {"name": "Ohfab", "value": 1201, "count": 1, "selected": false},
        {"name": "Oja", "value": 2305, "count": 7, "selected": false},
        {"name": "Onaya", "value": 2619, "count": 13, "selected": false},
        {"name": "Orna", "value": 2900, "count": 60, "selected": false},
        {"name": "Ornatte", "value": 2919, "count": 40, "selected": false},
        {
          "name": "Osaa by Adarsh",
          "value": 389,
          "count": 11,
          "selected": false
        },
        {
          "name": "Our Purple Studio",
          "value": 2726,
          "count": 100,
          "selected": false
        },
        {
          "name": "Oushk By Ussama Shabbir",
          "value": 2096,
          "count": 1,
          "selected": false
        },
        {"name": "P & S Co", "value": 2267, "count": 5, "selected": false},
        {
          "name": "PS Accessories by Payal Singhal",
          "value": 2709,
          "count": 10,
          "selected": false
        },
        {
          "name": "PS Kids by Payal Singhal",
          "value": 2705,
          "count": 6,
          "selected": false
        },
        {
          "name": "PS Men by Payal Singhal",
          "value": 2706,
          "count": 2,
          "selected": false
        },
        {
          "name": "PS Pret by Payal Singhal",
          "value": 2704,
          "count": 3,
          "selected": false
        },
        {"name": "PWN", "value": 1804, "count": 2, "selected": false},
        {"name": "Pa:Paa", "value": 2459, "count": 7, "selected": false},
        {"name": "Paarsh", "value": 2569, "count": 13, "selected": false},
        {"name": "Paio", "value": 2850, "count": 92, "selected": false},
        {"name": "Pairaahan", "value": 2441, "count": 2, "selected": false},
        {"name": "Paisley Pop", "value": 2150, "count": 450, "selected": false},
        {
          "name": "Palace of Silver",
          "value": 3118,
          "count": 78,
          "selected": false
        },
        {"name": "Palak & Mehak", "value": 2702, "count": 2, "selected": false},
        {"name": "Pallavi Jaipur", "value": 352, "count": 1, "selected": false},
        {"name": "Pallavi Kandoi", "value": 614, "count": 5, "selected": false},
        {"name": "Pankaj & Nidhi", "value": 137, "count": 6, "selected": false},
        {
          "name": "Pankhuri by Priyanka",
          "value": 2921,
          "count": 40,
          "selected": false
        },
        {
          "name": "Papa Don't Preach",
          "value": 234,
          "count": 1,
          "selected": false
        },
        {"name": "Para", "value": 2333, "count": 18, "selected": false},
        {"name": "Paresh Lamba", "value": 308, "count": 1, "selected": false},
        {"name": "Partykles", "value": 1983, "count": 11, "selected": false},
        {
          "name": "Parul Gandhi Label",
          "value": 2599,
          "count": 1,
          "selected": false
        },
        {"name": "Pasha India", "value": 2671, "count": 36, "selected": false},
        {"name": "Pashma", "value": 2332, "count": 54, "selected": false},
        {
          "name": "Paulmi and Harsh",
          "value": 2126,
          "count": 28,
          "selected": false
        },
        {"name": "Payal & Zinal", "value": 2673, "count": 2, "selected": false},
        {"name": "Payal Jain", "value": 1076, "count": 31, "selected": false},
        {"name": "Payal Pratap", "value": 143, "count": 58, "selected": false},
        {"name": "Payal Singhal", "value": 35, "count": 41, "selected": false},
        {"name": "Perca", "value": 2914, "count": 1, "selected": false},
        {
          "name": "Perenne Design",
          "value": 1879,
          "count": 25,
          "selected": false
        },
        {"name": "Pheeta", "value": 2644, "count": 28, "selected": false},
        {"name": "Philocaly", "value": 549, "count": 11, "selected": false},
        {"name": "Phiroza", "value": 2377, "count": 227, "selected": false},
        {"name": "Pink City", "value": 2145, "count": 3, "selected": false},
        {
          "name": "Pink Peacock Couture",
          "value": 2172,
          "count": 16,
          "selected": false
        },
        {"name": "PinkCow", "value": 932, "count": 6, "selected": false},
        {"name": "Pinki Sinha", "value": 289, "count": 77, "selected": false},
        {"name": "Pita Nila", "value": 2540, "count": 1, "selected": false},
        {
          "name": "Piyanshu Bajaj",
          "value": 2412,
          "count": 4,
          "selected": false
        },
        {"name": "Platinoir", "value": 728, "count": 2, "selected": false},
        {
          "name": "Pleats By Aruni",
          "value": 2992,
          "count": 5,
          "selected": false
        },
        {"name": "Plode", "value": 2851, "count": 28, "selected": false},
        {"name": "Pomcha Jaipur", "value": 3033, "count": 8, "selected": false},
        {"name": "Pooja Bagaria", "value": 2785, "count": 1, "selected": false},
        {
          "name": "Pooja Rajgarhia Gupta",
          "value": 2509,
          "count": 1,
          "selected": false
        },
        {"name": "Pooja Shroff", "value": 330, "count": 1, "selected": false},
        {"name": "Pooja-Keyur", "value": 179, "count": 1, "selected": false},
        {"name": "Poonam Dubey", "value": 307, "count": 2, "selected": false},
        {"name": "Poonam Kasera", "value": 1041, "count": 1, "selected": false},
        {
          "name": "Posh by Rathore",
          "value": 500,
          "count": 16,
          "selected": false
        },
        {
          "name": "Pozruh by Aiman",
          "value": 2197,
          "count": 5,
          "selected": false
        },
        {"name": "Prahnaaya", "value": 2512, "count": 1, "selected": false},
        {
          "name": "Prama by Pratima Pandey",
          "value": 242,
          "count": 1,
          "selected": false
        },
        {"name": "Pranay Baidya", "value": 286, "count": 83, "selected": false},
        {
          "name": "Prathyusha Garimella",
          "value": 218,
          "count": 1,
          "selected": false
        },
        {
          "name": "Pratibha Sultania",
          "value": 2601,
          "count": 9,
          "selected": false
        },
        {"name": "Preet Kaur", "value": 2183, "count": 6, "selected": false},
        {
          "name": "Preeti S Kapoor",
          "value": 161,
          "count": 5,
          "selected": false
        },
        {"name": "Prerto", "value": 326, "count": 28, "selected": false},
        {
          "name": "Pria Kataria Puri",
          "value": 3067,
          "count": 32,
          "selected": false
        },
        {
          "name": "Prints by Radhika",
          "value": 2116,
          "count": 2,
          "selected": false
        },
        {"name": "Prisho", "value": 2841, "count": 1, "selected": false},
        {
          "name": "Priya Chaudhary",
          "value": 2349,
          "count": 27,
          "selected": false
        },
        {"name": "Priyaa", "value": 2780, "count": 1, "selected": false},
        {
          "name": "Priyanka Haralalka",
          "value": 2788,
          "count": 5,
          "selected": false
        },
        {"name": "Project Bandi", "value": 2247, "count": 4, "selected": false},
        {"name": "Puddles", "value": 2138, "count": 1, "selected": false},
        {"name": "Puneet Gupta", "value": 113, "count": 3, "selected": false},
        {"name": "Punit Balana", "value": 1202, "count": 17, "selected": false},
        {"name": "Purvi Doshi", "value": 337, "count": 2, "selected": false},
        {
          "name": "Q by Sonia Baderia",
          "value": 2656,
          "count": 4,
          "selected": false
        },
        {"name": "Qaaleen", "value": 2568, "count": 46, "selected": false},
        {"name": "Quirky Tales", "value": 3058, "count": 26, "selected": false},
        {"name": "Quod", "value": 2159, "count": 1, "selected": false},
        {
          "name": "RI.Ritu Kumar",
          "value": 1223,
          "count": 27,
          "selected": false
        },
        {"name": "RNG Safawala", "value": 2277, "count": 87, "selected": false},
        {"name": "Raamae", "value": 3132, "count": 23, "selected": false},
        {
          "name": "Rabani & Rakha",
          "value": 217,
          "count": 34,
          "selected": false
        },
        {
          "name": "Radhika Agrawal Jewels",
          "value": 2456,
          "count": 11,
          "selected": false
        },
        {"name": "Raffinee", "value": 3024, "count": 41, "selected": false},
        {
          "name": "Raghavendra Rathore Jodhpur",
          "value": 3042,
          "count": 12,
          "selected": false
        },
        {"name": "Rahul Singh", "value": 1980, "count": 2, "selected": false},
        {
          "name": "Rajasthani Stuff",
          "value": 2918,
          "count": 169,
          "selected": false
        },
        {"name": "Rajat K Tangri", "value": 763, "count": 1, "selected": false},
        {
          "name": "Rajdeep Ranawat",
          "value": 2070,
          "count": 21,
          "selected": false
        },
        {
          "name": "Rajesh Pratap Singh",
          "value": 145,
          "count": 13,
          "selected": false
        },
        {"name": "Rajiramniq", "value": 2136, "count": 3, "selected": false},
        {
          "name": "Rang Swati Vijaivargie",
          "value": 2389,
          "count": 48,
          "selected": false
        },
        {
          "name": "Rang by Lespetits",
          "value": 2146,
          "count": 39,
          "selected": false
        },
        {"name": "Ranian", "value": 1406, "count": 3, "selected": false},
        {"name": "Ranikidswear", "value": 2616, "count": 12, "selected": false},
        {"name": "Ranna Gill", "value": 348, "count": 29, "selected": false},
        {
          "name": "Ranng by Vandna",
          "value": 2775,
          "count": 105,
          "selected": false
        },
        {"name": "Rar Studio", "value": 124, "count": 24, "selected": false},
        {"name": "Rara Avis", "value": 1140, "count": 1, "selected": false},
        {"name": "Rashi Jain", "value": 2286, "count": 1, "selected": false},
        {"name": "Raw Mango", "value": 2940, "count": 1, "selected": false},
        {"name": "Reeti Arneja", "value": 169, "count": 1, "selected": false},
        {"name": "Reistor", "value": 2739, "count": 124, "selected": false},
        {
          "name": "Rekha by Deepak Nagrani",
          "value": 2381,
          "count": 2,
          "selected": false
        },
        {"name": "Resonance", "value": 2868, "count": 29, "selected": false},
        {"name": "Reynu Taandon", "value": 304, "count": 12, "selected": false},
        {"name": "Rhe-Ana", "value": 2691, "count": 74, "selected": false},
        {"name": "Rhua India", "value": 2755, "count": 1, "selected": false},
        {
          "name": "Riana Jewellery",
          "value": 2299,
          "count": 2,
          "selected": false
        },
        {"name": "Ribbon Candy", "value": 2458, "count": 41, "selected": false},
        {"name": "Richa", "value": 193, "count": 1, "selected": false},
        {
          "name": "Richa Jaisinghani Label",
          "value": 2890,
          "count": 1,
          "selected": false
        },
        {"name": "Ridhi Mehra", "value": 44, "count": 5, "selected": false},
        {"name": "Rimzim Dadu", "value": 1115, "count": 2, "selected": false},
        {"name": "Rina Dhaka", "value": 713, "count": 2, "selected": false},
        {
          "name": "Rishi & Vibhuti",
          "value": 2140,
          "count": 10,
          "selected": false
        },
        {
          "name": "Rishi and Soujit",
          "value": 502,
          "count": 13,
          "selected": false
        },
        {"name": "Ritu Kumar", "value": 319, "count": 181, "selected": false},
        {
          "name": "Rivaaj Clothing",
          "value": 2783,
          "count": 2,
          "selected": false
        },
        {"name": "Rocky Star", "value": 1389, "count": 3, "selected": false},
        {"name": "Rohit Bal", "value": 184, "count": 2, "selected": false},
        {
          "name": "Rohit Gandhi + Rahul Khanna",
          "value": 186,
          "count": 1,
          "selected": false
        },
        {"name": "Roora by Ritam", "value": 586, "count": 2, "selected": false},
        {"name": "Roshni Chopra", "value": 272, "count": 4, "selected": false},
        {"name": "Rossoyuki", "value": 160, "count": 1, "selected": false},
        {"name": "Roza Pret", "value": 2915, "count": 1, "selected": false},
        {"name": "Roze", "value": 2974, "count": 4, "selected": false},
        {"name": "Rriso", "value": 142, "count": 6, "selected": false},
        {"name": "Ruar India", "value": 2533, "count": 1, "selected": false},
        {
          "name": "Ruchira Nangalia",
          "value": 2366,
          "count": 34,
          "selected": false
        },
        {"name": "Ruhr India", "value": 2882, "count": 1, "selected": false},
        {"name": "Runit Gupta", "value": 2424, "count": 5, "selected": false},
        {"name": "S & V Designs", "value": 1567, "count": 5, "selected": false},
        {
          "name": "S&N by Shantnu Nikhil",
          "value": 2462,
          "count": 15,
          "selected": false
        },
        {
          "name": "SOL by Piyush Dedhia",
          "value": 201,
          "count": 1,
          "selected": false
        },
        {
          "name": "SVA by Sonam & Paras Modi",
          "value": 54,
          "count": 3,
          "selected": false
        },
        {
          "name": "Saaksha & Kinni",
          "value": 355,
          "count": 7,
          "selected": false
        },
        {"name": "Sabyasachi", "value": 167, "count": 27, "selected": false},
        {
          "name": "Sachkiran Bimbra",
          "value": 2325,
          "count": 1,
          "selected": false
        },
        {"name": "Sadan Pande", "value": 519, "count": 1, "selected": false},
        {"name": "Sadyaska", "value": 2508, "count": 19, "selected": false},
        {
          "name": "Sagaa by Vanita",
          "value": 1385,
          "count": 1,
          "selected": false
        },
        {"name": "Sage Saga", "value": 2168, "count": 4, "selected": false},
        {"name": "Sahil Aneja", "value": 78, "count": 38, "selected": false},
        {"name": "Sahil Kochhar", "value": 133, "count": 2, "selected": false},
        {"name": "Saka Designs", "value": 2236, "count": 35, "selected": false},
        {"name": "Saksh", "value": 2518, "count": 1, "selected": false},
        {
          "name": "Saksham Neharicka",
          "value": 1959,
          "count": 9,
          "selected": false
        },
        {"name": "Sakshi Girri", "value": 2566, "count": 2, "selected": false},
        {
          "name": "Sakshi Khetterpal",
          "value": 2600,
          "count": 1,
          "selected": false
        },
        {
          "name": "Samatvam by Anjali Bhaskar",
          "value": 998,
          "count": 2,
          "selected": false
        },
        {"name": "Sameer Madan", "value": 2157, "count": 3, "selected": false},
        {
          "name": "Samyukta Singhania",
          "value": 1949,
          "count": 952,
          "selected": false
        },
        {"name": "Sana Barreja", "value": 1407, "count": 3, "selected": false},
        {"name": "Sandalwali", "value": 2234, "count": 85, "selected": false},
        {
          "name": "Sangeeta Boochra",
          "value": 478,
          "count": 132,
          "selected": false
        },
        {
          "name": "Sanjev Marwaaha",
          "value": 2685,
          "count": 5,
          "selected": false
        },
        {"name": "Sanya Gulati", "value": 2310, "count": 5, "selected": false},
        {
          "name": "Sarab Khanijou",
          "value": 370,
          "count": 15,
          "selected": false
        },
        {
          "name": "Sarah & Sandeep",
          "value": 170,
          "count": 1,
          "selected": false
        },
        {"name": "Sashe House", "value": 3080, "count": 17, "selected": false},
        {"name": "Saundh", "value": 2256, "count": 11, "selected": false},
        {
          "name": "Sayantan Sarkar",
          "value": 479,
          "count": 2,
          "selected": false
        },
        {
          "name": "Scarlet Sage",
          "value": 2139,
          "count": 213,
          "selected": false
        },
        {
          "name": "Seams Pret And Couture",
          "value": 2724,
          "count": 1,
          "selected": false
        },
        {"name": "Seeaash", "value": 2654, "count": 2, "selected": false},
        {"name": "Seema Gujral", "value": 1672, "count": 37, "selected": false},
        {"name": "Seema Nanda", "value": 1663, "count": 2, "selected": false},
        {"name": "Seema Thukral", "value": 2105, "count": 1, "selected": false},
        {"name": "Seher Jaipur", "value": 3099, "count": 67, "selected": false},
        {"name": "Sephyr", "value": 2660, "count": 2, "selected": false},
        {
          "name": "Sequissential",
          "value": 3095,
          "count": 57,
          "selected": false
        },
        {"name": "Serein Decor", "value": 2824, "count": 78, "selected": false},
        {"name": "Seven", "value": 1982, "count": 2, "selected": false},
        {
          "name": "Shades of India",
          "value": 1880,
          "count": 9,
          "selected": false
        },
        {
          "name": "Shagun Manchanda",
          "value": 1686,
          "count": 8,
          "selected": false
        },
        {"name": "Shahin Mannan", "value": 595, "count": 3, "selected": false},
        {"name": "Shasha Gaba", "value": 345, "count": 2, "selected": false},
        {"name": "Sheetal Batra", "value": 2387, "count": 7, "selected": false},
        {"name": "Shikha Mehta", "value": 2199, "count": 1, "selected": false},
        {
          "name": "Shikhar Sharma",
          "value": 3004,
          "count": 23,
          "selected": false
        },
        {"name": "Shillpa Purii", "value": 347, "count": 3, "selected": false},
        {"name": "Shilpsutra", "value": 1888, "count": 2, "selected": false},
        {"name": "Shingora", "value": 2894, "count": 152, "selected": false},
        {
          "name": "Shining Kanika",
          "value": 2700,
          "count": 30,
          "selected": false
        },
        {"name": "Shivani Awasty", "value": 450, "count": 1, "selected": false},
        {
          "name": "Shivani Bhargava",
          "value": 2205,
          "count": 15,
          "selected": false
        },
        {
          "name": "Shloka Khialani",
          "value": 2000,
          "count": 1,
          "selected": false
        },
        {
          "name": "Shloka Sudhakar",
          "value": 1200,
          "count": 1,
          "selected": false
        },
        {
          "name": "Shorshe Clothing",
          "value": 2178,
          "count": 10,
          "selected": false
        },
        {"name": "Show Shaa", "value": 1070, "count": 1, "selected": false},
        {"name": "Shriya Som", "value": 531, "count": 25, "selected": false},
        {"name": "Shruti S", "value": 2947, "count": 1, "selected": false},
        {
          "name": "Shruti Sancheti",
          "value": 215,
          "count": 9,
          "selected": false
        },
        {"name": "Shrutkirti", "value": 2835, "count": 5, "selected": false},
        {"name": "Shwetanga", "value": 2695, "count": 4, "selected": false},
        {
          "name": "Shyam Narayan Prasad",
          "value": 235,
          "count": 44,
          "selected": false
        },
        {
          "name": "Siddartha Tytler",
          "value": 314,
          "count": 5,
          "selected": false
        },
        {
          "name": "Siddhant Agrawal Label",
          "value": 2443,
          "count": 36,
          "selected": false
        },
        {
          "name": "Siddhartha Bansal",
          "value": 259,
          "count": 1,
          "selected": false
        },
        {
          "name": "Signature Sole",
          "value": 2104,
          "count": 1,
          "selected": false
        },
        {"name": "Silken", "value": 2863, "count": 27, "selected": false},
        {"name": "Silky Bindra", "value": 1890, "count": 4, "selected": false},
        {"name": "Simar Dugal", "value": 2028, "count": 1, "selected": false},
        {"name": "Sitaraa", "value": 2191, "count": 2, "selected": false},
        {"name": "Sko", "value": 1750, "count": 2, "selected": false},
        {
          "name": "Smars Jewelry",
          "value": 3009,
          "count": 17,
          "selected": false
        },
        {
          "name": "Smriti Jhunjhunwala",
          "value": 706,
          "count": 1,
          "selected": false
        },
        {
          "name": "Smriti by Anju Agarwal",
          "value": 2006,
          "count": 10,
          "selected": false
        },
        {"name": "Sole Fry", "value": 1652, "count": 4, "selected": false},
        {"name": "Sole House", "value": 2229, "count": 169, "selected": false},
        {
          "name": "Son of A Noble Snob",
          "value": 1834,
          "count": 3,
          "selected": false
        },
        {"name": "Sonaakshi Raaj", "value": 146, "count": 1, "selected": false},
        {"name": "Soniya G", "value": 2552, "count": 12, "selected": false},
        {
          "name": "Soul Space by Vandana Lohia",
          "value": 2132,
          "count": 1,
          "selected": false
        },
        {
          "name": "Soup by Sougat Paul",
          "value": 221,
          "count": 65,
          "selected": false
        },
        {"name": "Sozenkari", "value": 452, "count": 1, "selected": false},
        {"name": "Spring Break", "value": 2187, "count": 17, "selected": false},
        {"name": "Stotram", "value": 2469, "count": 1, "selected": false},
        {"name": "Studio Medium", "value": 2869, "count": 1, "selected": false},
        {
          "name": "Studio Moda India",
          "value": 2403,
          "count": 3,
          "selected": false
        },
        {"name": "Studio Rigu", "value": 2659, "count": 1, "selected": false},
        {"name": "Sufia", "value": 2220, "count": 2, "selected": false},
        {"name": "Sugar Candy", "value": 1342, "count": 1, "selected": false},
        {"name": "Suhino", "value": 2585, "count": 1, "selected": false},
        {
          "name": "Sunira Designs",
          "value": 2326,
          "count": 26,
          "selected": false
        },
        {"name": "Surabhi Arya", "value": 2324, "count": 1, "selected": false},
        {"name": "Surbhi Gupta", "value": 2167, "count": 1, "selected": false},
        {
          "name": "Sureena Chowdhri",
          "value": 2826,
          "count": 8,
          "selected": false
        },
        {"name": "Surendri", "value": 250, "count": 1, "selected": false},
        {"name": "Surily G", "value": 1187, "count": 2, "selected": false},
        {
          "name": "Suruchi Parakh",
          "value": 2657,
          "count": 8,
          "selected": false
        },
        {
          "name": "Suta & Co - Men",
          "value": 1850,
          "count": 2,
          "selected": false
        },
        {"name": "SutrabySweta", "value": 2751, "count": 11, "selected": false},
        {
          "name": "Swabhimann Jewellery",
          "value": 2923,
          "count": 142,
          "selected": false
        },
        {"name": "Swapan & Seema", "value": 194, "count": 1, "selected": false},
        {
          "name": "Swarang Designs",
          "value": 2885,
          "count": 31,
          "selected": false
        },
        {"name": "Swatee Singh", "value": 1418, "count": 3, "selected": false},
        {"name": "Swati Golyan", "value": 2358, "count": 9, "selected": false},
        {
          "name": "Swati Vijaivargie",
          "value": 144,
          "count": 41,
          "selected": false
        },
        {
          "name": "TaBa Kashi by Artika Shah",
          "value": 2803,
          "count": 18,
          "selected": false
        },
        {
          "name": "Table Manners",
          "value": 2362,
          "count": 17,
          "selected": false
        },
        {"name": "Tachi", "value": 2066, "count": 1, "selected": false},
        {"name": "Tahweave", "value": 1966, "count": 1, "selected": false},
        {
          "name": "Talking Threads",
          "value": 2043,
          "count": 1,
          "selected": false
        },
        {
          "name": "Tamanna Punjabi Kapoor",
          "value": 555,
          "count": 3,
          "selected": false
        },
        {
          "name": "Tamaraa By Tahani",
          "value": 2408,
          "count": 6,
          "selected": false
        },
        {"name": "Tan & Loom", "value": 2987, "count": 62, "selected": false},
        {
          "name": "Tanieya Khanuja",
          "value": 316,
          "count": 2,
          "selected": false
        },
        {"name": "Taramira", "value": 2450, "count": 17, "selected": false},
        {"name": "Tarini Vij", "value": 2725, "count": 7, "selected": false},
        {"name": "Taro", "value": 2363, "count": 4, "selected": false},
        {"name": "Taroob", "value": 3109, "count": 40, "selected": false},
        {
          "name": "Tarun Tahiliani",
          "value": 1575,
          "count": 221,
          "selected": false
        },
        {"name": "Tashee", "value": 2486, "count": 1, "selected": false},
        {"name": "Tasuvure", "value": 2297, "count": 12, "selected": false},
        {
          "name": "Tasuvure Indies",
          "value": 3124,
          "count": 2,
          "selected": false
        },
        {
          "name": "Thank You Mom",
          "value": 2500,
          "count": 14,
          "selected": false
        },
        {"name": "The Alter", "value": 2910, "count": 8, "selected": false},
        {
          "name": "The Bling Girll",
          "value": 2713,
          "count": 83,
          "selected": false
        },
        {
          "name": "The Boozy Button",
          "value": 2733,
          "count": 2,
          "selected": false
        },
        {
          "name": "The Cotton Staple",
          "value": 2467,
          "count": 69,
          "selected": false
        },
        {
          "name": "The Decor Remedy",
          "value": 3003,
          "count": 34,
          "selected": false
        },
        {
          "name": "The House of Ganges",
          "value": 2864,
          "count": 43,
          "selected": false
        },
        {
          "name": "The Leather Garden",
          "value": 2347,
          "count": 69,
          "selected": false
        },
        {"name": "The Loom Art", "value": 1926, "count": 35, "selected": false},
        {
          "name": "The Madras Trunk",
          "value": 2631,
          "count": 213,
          "selected": false
        },
        {
          "name": "The Peach Street",
          "value": 2543,
          "count": 74,
          "selected": false
        },
        {"name": "The Plum Bum", "value": 2287, "count": 2, "selected": false},
        {
          "name": "The Pot Plant Clothing",
          "value": 482,
          "count": 2,
          "selected": false
        },
        {
          "name": "The Purple Sack",
          "value": 2482,
          "count": 86,
          "selected": false
        },
        {
          "name": "The Quirk India",
          "value": 2887,
          "count": 128,
          "selected": false
        },
        {"name": "The Royaleum", "value": 2827, "count": 4, "selected": false},
        {
          "name": "The Saree Sneakers",
          "value": 2553,
          "count": 1,
          "selected": false
        },
        {
          "name": "The Slow Studio",
          "value": 2402,
          "count": 39,
          "selected": false
        },
        {
          "name": "The Summer House",
          "value": 2904,
          "count": 2,
          "selected": false
        },
        {
          "name": "The Table Fable",
          "value": 2948,
          "count": 43,
          "selected": false
        },
        {"name": "TheRealB", "value": 2681, "count": 3, "selected": false},
        {"name": "Three", "value": 606, "count": 30, "selected": false},
        {
          "name": "Three Piece Company",
          "value": 2374,
          "count": 59,
          "selected": false
        },
        {"name": "Throwpillow", "value": 2307, "count": 147, "selected": false},
        {"name": "Tiber Taber", "value": 1482, "count": 162, "selected": false},
        {"name": "Tiesta", "value": 2905, "count": 1, "selected": false},
        {"name": "Tiny Pants", "value": 2762, "count": 1, "selected": false},
        {"name": "Tisha Saksena", "value": 340, "count": 1, "selected": false},
        {"name": "Tissr", "value": 2309, "count": 132, "selected": false},
        {"name": "Tizora", "value": 2311, "count": 90, "selected": false},
        {"name": "Tokree", "value": 1320, "count": 1, "selected": false},
        {"name": "Torani", "value": 1800, "count": 8, "selected": false},
        {"name": "Torqadorn", "value": 3006, "count": 3, "selected": false},
        {"name": "Tossido", "value": 3034, "count": 186, "selected": false},
        {
          "name": "Tribe Amrapali",
          "value": 2147,
          "count": 56,
          "selected": false
        },
        {"name": "Tsara", "value": 2034, "count": 2, "selected": false},
        {"name": "Turaja", "value": 2878, "count": 3, "selected": false},
        {
          "name": "Tutus by Tutu",
          "value": 2216,
          "count": 56,
          "selected": false
        },
        {"name": "Twenty Nine", "value": 2056, "count": 3, "selected": false},
        {
          "name": "Twinkle Hanspal",
          "value": 1038,
          "count": 2,
          "selected": false
        },
        {
          "name": "Two Sisters By Gyans",
          "value": 3051,
          "count": 36,
          "selected": false
        },
        {"name": "Umbar", "value": 1480, "count": 8, "selected": false},
        {"name": "Urbature", "value": 2451, "count": 81, "selected": false},
        {"name": "Urvashi Joneja", "value": 132, "count": 2, "selected": false},
        {"name": "Urvashi Kaur", "value": 212, "count": 6, "selected": false},
        {"name": "Vaani Beswal", "value": 2699, "count": 1, "selected": false},
        {"name": "Vaayu", "value": 268, "count": 7, "selected": false},
        {
          "name": "Vanilla Moon",
          "value": 2834,
          "count": 161,
          "selected": false
        },
        {"name": "Vanshik", "value": 230, "count": 3, "selected": false},
        {
          "name": "Vara by Vibha n Priti",
          "value": 2078,
          "count": 6,
          "selected": false
        },
        {"name": "Vareli Bafna", "value": 1746, "count": 55, "selected": false},
        {"name": "Varnika Arora", "value": 1028, "count": 1, "selected": false},
        {"name": "Varsha Wadhwa", "value": 1302, "count": 7, "selected": false},
        {"name": "Varun Bahl", "value": 127, "count": 4, "selected": false},
        {
          "name": "Varun Chakkilam",
          "value": 2106,
          "count": 15,
          "selected": false
        },
        {"name": "Vasavi Shah", "value": 764, "count": 1, "selected": false},
        {"name": "Vedika M", "value": 524, "count": 4, "selected": false},
        {
          "name": "Verb by Pallavi Singhee",
          "value": 312,
          "count": 1,
          "selected": false
        },
        {
          "name": "Veruschka by Payal Kothari",
          "value": 162,
          "count": 23,
          "selected": false
        },
        {"name": "Viam", "value": 2411, "count": 2, "selected": false},
        {"name": "Vidhi Wadhwani", "value": 486, "count": 4, "selected": false},
        {
          "name": "Vikram Phadnis",
          "value": 1003,
          "count": 1,
          "selected": false
        },
        {"name": "Vivek Patel", "value": 2399, "count": 2, "selected": false},
        {
          "name": "Vivinia Designer Jewellery",
          "value": 2630,
          "count": 20,
          "selected": false
        },
        {
          "name": "Vrinda by Pundrik Dubey",
          "value": 2341,
          "count": 3,
          "selected": false
        },
        {"name": "Vrisa", "value": 2049, "count": 4, "selected": false},
        {"name": "Waby Saby", "value": 2909, "count": 11, "selected": false},
        {"name": "Waraq", "value": 2067, "count": 1, "selected": false},
        {"name": "Weaver Story", "value": 2642, "count": 6, "selected": false},
        {"name": "Whitemuds", "value": 2694, "count": 24, "selected": false},
        {"name": "World of Ra", "value": 2772, "count": 3, "selected": false},
        {"name": "Wyci", "value": 1082, "count": 1, "selected": false},
        {"name": "XOXO Apurva", "value": 2346, "count": 1, "selected": false},
        {"name": "Yam India", "value": 2276, "count": 4, "selected": false},
        {"name": "Yavi", "value": 2061, "count": 2, "selected": false},
        {"name": "Yogita Kadam", "value": 2340, "count": 3, "selected": false},
        {"name": "Zariin", "value": 435, "count": 394, "selected": false},
        {
          "name": "Zariya the Label",
          "value": 2866,
          "count": 3,
          "selected": false
        },
        {"name": "Zeefaa", "value": 2811, "count": 1, "selected": false},
        {"name": "Zeel Doshi", "value": 386, "count": 1, "selected": false},
        {
          "name": "Zevar by Geeta",
          "value": 941,
          "count": 11,
          "selected": false
        },
        {"name": "Zohra", "value": 2118, "count": 92, "selected": false},
        {"name": "Zosia", "value": 2748, "count": 7, "selected": false},
        {"name": "Zwaan", "value": 1978, "count": 2, "selected": false},
        {
          "name": "wiSdom Fragrances by Sheetal Desai",
          "value": 2735,
          "count": 18,
          "selected": false
        }
      ]
    },
    {
      "name": "Price",
      "field": "price",
      "selection": "range",
      "nested": false,
      "min": "150.00",
      "max": "1374900.00"
    },
    {
      "selectedCount": 0,
      "name": "Size",
      "field": "size_id",
      "selection": "multiple",
      "nested": true,
      "list": [
        {
          "selectedCount": 0,
          "name": "Clothing",
          "value": 001,
          "list": [
            {"name": "XXS", "value": 41, "count": 136, "selected": false},
            {"name": "XS", "value": 1, "count": 6589, "selected": false},
            {"name": "S", "value": 2, "count": 9085, "selected": false},
            {"name": "M", "value": 3, "count": 9369, "selected": false},
            {"name": "L", "value": 4, "count": 9186, "selected": false},
            {"name": "XL", "value": 5, "count": 8789, "selected": false},
            {"name": "XXL", "value": 6, "count": 7342, "selected": false},
            {"name": "3XL", "value": 37, "count": 5518, "selected": false},
            {"name": "4XL", "value": 38, "count": 4468, "selected": false},
            {"name": "5XL", "value": 39, "count": 4045, "selected": false},
            {"name": "6XL", "value": 40, "count": 3806, "selected": false},
            {"name": "FREE SIZE", "value": 7, "count": 1431, "selected": false}
          ]
        },
        {
          "selectedCount": 0,
          "name": "Footwear",
          "value": 002,
          "list": [
            {"name": "UK 4", "value": 54, "count": 1, "selected": false},
            {"name": "UK 5", "value": 55, "count": 32, "selected": false},
            {"name": "UK 6", "value": 56, "count": 79, "selected": false},
            {"name": "UK 7", "value": 57, "count": 94, "selected": false},
            {"name": "UK 8", "value": 58, "count": 94, "selected": false},
            {"name": "UK 9", "value": 59, "count": 94, "selected": false},
            {"name": "UK 10", "value": 60, "count": 94, "selected": false},
            {"name": "UK 11", "value": 61, "count": 94, "selected": false},
            {"name": "UK 12", "value": 62, "count": 58, "selected": false},
            {"name": "UK 13", "value": 63, "count": 53, "selected": false},
            {"name": "28", "value": 33, "count": 1, "selected": false},
            {"name": "30", "value": 34, "count": 2, "selected": false},
            {"name": "32", "value": 21, "count": 2, "selected": false},
            {"name": "34", "value": 22, "count": 2, "selected": false},
            {"name": "36", "value": 15, "count": 7, "selected": false},
            {"name": "37", "value": 16, "count": 8, "selected": false},
            {"name": "38", "value": 17, "count": 11, "selected": false},
            {"name": "39", "value": 18, "count": 13, "selected": false},
            {"name": "40", "value": 19, "count": 33, "selected": false},
            {"name": "41", "value": 20, "count": 29, "selected": false},
            {"name": "42", "value": 35, "count": 36, "selected": false},
            {"name": "43", "value": 43, "count": 34, "selected": false},
            {"name": "44", "value": 36, "count": 36, "selected": false},
            {"name": "UK 6.5", "value": 108, "count": 3, "selected": false},
            {"name": "UK 7.5", "value": 110, "count": 3, "selected": false}
          ]
        },
        {
          "selectedCount": 0,
          "name": "Kids",
          "value": 003,
          "list": [
            {"name": "0-3 M", "value": 67, "count": 510, "selected": false},
            {"name": "3-6 M", "value": 68, "count": 515, "selected": false},
            {"name": "6-12 M", "value": 69, "count": 736, "selected": false},
            {"name": "1-2 Y", "value": 24, "count": 1268, "selected": false},
            {"name": "2-3 Y", "value": 25, "count": 1447, "selected": false},
            {"name": "3-4 Y", "value": 26, "count": 1528, "selected": false},
            {"name": "4-5 Y", "value": 27, "count": 1400, "selected": false},
            {"name": "5-6 Y", "value": 28, "count": 1480, "selected": false},
            {"name": "6-7 Y", "value": 29, "count": 1320, "selected": false},
            {"name": "7-8 Y", "value": 30, "count": 1228, "selected": false},
            {"name": "8-9 Y", "value": 31, "count": 927, "selected": false},
            {"name": "9-10 Y", "value": 32, "count": 823, "selected": false},
            {"name": "10-11 Y", "value": 93, "count": 521, "selected": false},
            {"name": "11-12 Y", "value": 42, "count": 544, "selected": false},
            {"name": "12-13 Y", "value": 44, "count": 458, "selected": false},
            {"name": "13-14 Y", "value": 52, "count": 322, "selected": false},
            {"name": "14-15 Y", "value": 45, "count": 173, "selected": false},
            {"name": "15-16 Y", "value": 53, "count": 39, "selected": false}
          ]
        },
        {
          "selectedCount": 0,
          "name": "Accessories",
          "value": 004,
          "list": [
            {"name": "UK 10", "value": 12, "count": 40, "selected": false},
            {"name": "UK 11", "value": 13, "count": 40, "selected": false},
            {
              "name": "FREE SIZE",
              "value": 94,
              "count": 2168,
              "selected": false
            },
            {"name": "S", "value": 97, "count": 39, "selected": false},
            {"name": "XS", "value": 98, "count": 6, "selected": false},
            {"name": "M", "value": 100, "count": 39, "selected": false},
            {"name": "L", "value": 101, "count": 38, "selected": false},
            {"name": "XL", "value": 102, "count": 13, "selected": false},
            {"name": "XXL", "value": 103, "count": 4, "selected": false},
            {"name": "3XL", "value": 104, "count": 2, "selected": false},
            {"name": "4XL", "value": 105, "count": 1, "selected": false},
            {"name": "5XL", "value": 106, "count": 1, "selected": false},
            {"name": "6XL", "value": 107, "count": 1, "selected": false},
            {"name": "UK 4", "value": 122, "count": 38, "selected": false},
            {"name": "UK 5", "value": 123, "count": 78, "selected": false},
            {"name": "UK 6", "value": 124, "count": 78, "selected": false},
            {"name": "UK 7", "value": 125, "count": 78, "selected": false},
            {"name": "UK 8", "value": 126, "count": 78, "selected": false},
            {"name": "UK 9", "value": 127, "count": 78, "selected": false},
            {"name": "32", "value": 118, "count": 30, "selected": false},
            {"name": "34", "value": 119, "count": 30, "selected": false},
            {"name": "35", "value": 111, "count": 593, "selected": false},
            {"name": "36", "value": 112, "count": 1744, "selected": false},
            {"name": "37", "value": 113, "count": 1790, "selected": false},
            {"name": "38", "value": 114, "count": 1798, "selected": false},
            {"name": "39", "value": 115, "count": 1790, "selected": false},
            {"name": "40", "value": 116, "count": 1799, "selected": false},
            {"name": "41", "value": 117, "count": 1765, "selected": false},
            {"name": "42", "value": 120, "count": 578, "selected": false},
            {"name": "43", "value": 121, "count": 11, "selected": false}
          ]
        },
        {
          "selectedCount": 0,
          "name": "Jewellery",
          "value": 005,
          "list": [
            {"name": "FREE SIZE", "value": 95, "count": 5464, "selected": false}
          ]
        },
        {
          "selectedCount": 0,
          "name": "Homeware",
          "value": 006,
          "list": [
            {"name": "3X5", "value": 72, "count": 1, "selected": false},
            {"name": "4X6", "value": 74, "count": 11, "selected": false},
            {"name": "5X7", "value": 87, "count": 2, "selected": false},
            {"name": "12X20", "value": 90, "count": 29, "selected": false},
            {"name": "18X18", "value": 92, "count": 75, "selected": false},
            {
              "name": "ONE SIZE",
              "value": 128,
              "count": 1677,
              "selected": false
            },
            {"name": "S", "value": 129, "count": 8, "selected": false},
            {"name": "M", "value": 130, "count": 1, "selected": false},
            {"name": "L", "value": 131, "count": 28, "selected": false}
          ]
        }
      ]
    },
    {
      "name": "Color",
      "field": "color_id",
      "selection": "multiple",
      "nested": false,
      "selectedCount": 0,
      "list": [
        {
          "name": "Beige",
          "value": 1,
          "colorCode": "#d4ba97",
          "count": 1175,
          "selected": false
        },
        {
          "name": "Black",
          "value": 2,
          "colorCode": "#000000",
          "count": 1971,
          "selected": false
        },
        {
          "name": "Blue",
          "value": 3,
          "colorCode": "#0063b1",
          "count": 3218,
          "selected": false
        },
        {
          "name": "Brown",
          "value": 21,
          "colorCode": "#78422c",
          "count": 916,
          "selected": false
        },
        {
          "name": "FUCHSIA",
          "value": 7,
          "colorCode": "#fa008a",
          "count": 8,
          "selected": false
        },
        {
          "name": "Gold",
          "value": 8,
          "colorCode": "#d4af37",
          "count": 5290,
          "selected": false
        },
        {
          "name": "Green",
          "value": 19,
          "colorCode": "#8BC34A",
          "count": 2293,
          "selected": false
        },
        {
          "name": "Grey",
          "value": 12,
          "colorCode": "#5e5f61",
          "count": 999,
          "selected": false
        },
        {
          "name": "Maroon",
          "value": 24,
          "colorCode": "#B71C1C",
          "count": 614,
          "selected": false
        },
        {
          "name": "Multi Color",
          "value": 28,
          "colorCode": "12345D",
          "count": 1396,
          "selected": false
        },
        {
          "name": "Orange",
          "value": 20,
          "colorCode": "#fd8c02",
          "count": 470,
          "selected": false
        },
        {
          "name": "Peach",
          "value": 29,
          "colorCode": "#ff7666",
          "count": 663,
          "selected": false
        },
        {
          "name": "Pink",
          "value": 27,
          "colorCode": "#F06292",
          "count": 2367,
          "selected": false
        },
        {
          "name": "Purple",
          "value": 17,
          "colorCode": "#a57dbb",
          "count": 737,
          "selected": false
        },
        {
          "name": "Red",
          "value": 14,
          "colorCode": "#f60109",
          "count": 1312,
          "selected": false
        },
        {
          "name": "Silver",
          "value": 13,
          "colorCode": "#C0C0C0",
          "count": 1215,
          "selected": false
        },
        {
          "name": "White",
          "value": 9,
          "colorCode": "#FFFFFF",
          "count": 3274,
          "selected": false
        },
        {
          "name": "Yellow",
          "value": 11,
          "colorCode": "#ffff00",
          "count": 1404,
          "selected": false
        }
      ]
    },
    {
      "name": "Delivery Time",
      "field": "delivery",
      "selection": "single",
      "nested": false,
      "selectedCount": 0,
      "list": [
        {"name": "1 Week", "value": 1, "count": 20741, "selected": false},
        {"name": "3 Weeks", "value": 3, "count": 6, "selected": false},
        {"name": "4 Weeks", "value": 4, "count": 622, "selected": false}
      ]
    },
    {
      "name": "Occasion",
      "field": "occasion_id",
      "selection": "multiple",
      "selectedCount": 0,
      "nested": false,
      "list": [
        {"name": "Bride", "value": 1, "count": 68, "selected": false},
        {
          "name": "Mehendi & Haldi",
          "value": 2,
          "count": 464,
          "selected": false
        },
        {"name": "Sangeet", "value": 3, "count": 511, "selected": false},
        {"name": "Cocktail", "value": 4, "count": 171, "selected": false},
        {"name": "Wedding", "value": 5, "count": 538, "selected": false},
        {"name": "Reception", "value": 6, "count": 200, "selected": false},
        {
          "name": "Destination Wedding",
          "value": 7,
          "count": 551,
          "selected": false
        },
        {"name": "Resort", "value": 8, "count": 710, "selected": false},
        {"name": "Work", "value": 9, "count": 941, "selected": false},
        {"name": "Party", "value": 10, "count": 995, "selected": false},
        {"name": "Puja", "value": 11, "count": 1135, "selected": false},
        {"name": "Groom", "value": 12, "count": 32, "selected": false},
        {
          "name": "Mehendi & Puja",
          "value": 13,
          "count": 243,
          "selected": false
        },
        {"name": "Sangeet", "value": 14, "count": 551, "selected": false},
        {
          "name": "Cocktail & Reception",
          "value": 15,
          "count": 60,
          "selected": false
        },
        {"name": "Wedding", "value": 16, "count": 515, "selected": false},
        {
          "name": "Destination Wedding",
          "value": 17,
          "count": 90,
          "selected": false
        },
        {"name": "Resort", "value": 18, "count": 63, "selected": false},
        {"name": "Party", "value": 19, "count": 208, "selected": false},
        {
          "name": "Cocktail & Reception",
          "value": 30,
          "count": 6,
          "selected": false
        },
        {
          "name": "Destination Wedding",
          "value": 31,
          "count": 1,
          "selected": false
        },
        {"name": "Mehendi & Puja", "value": 33, "count": 1, "selected": false},
        {"name": "Party", "value": 34, "count": 15, "selected": false},
        {"name": "Puja", "value": 35, "count": 1, "selected": false},
        {"name": "Resort", "value": 37, "count": 26, "selected": false},
        {"name": "Wedding", "value": 39, "count": 2, "selected": false},
        {"name": "Work", "value": 40, "count": 1, "selected": false},
        {
          "name": "Festive & Wedding",
          "value": 20,
          "count": 275,
          "selected": false
        },
        {"name": "Party", "value": 21, "count": 138, "selected": false},
        {"name": "Bride", "value": 22, "count": 36, "selected": false},
        {
          "name": "Mehendi & Puja",
          "value": 23,
          "count": 143,
          "selected": false
        },
        {
          "name": "Cocktail & Reception",
          "value": 24,
          "count": 136,
          "selected": false
        },
        {"name": "Wedding", "value": 25, "count": 202, "selected": false},
        {"name": "Work", "value": 26, "count": 126, "selected": false},
        {"name": "Party", "value": 27, "count": 208, "selected": false}
      ]
    }
  ],
};

class FilterModel {
  String? name;
  String? field;
  String? selection;
  bool? nested;
  List<FilterModel>? list;
  bool? selected;
  int? value;
  int? count;
  String? min;
  String? max;
  String? colorCode;
  int? selectedCount;

  FilterModel(
      {this.field,
      this.list,
      this.name,
      this.nested,
      this.selection,
      this.colorCode,
      this.count,
      this.max,
      this.min,
      this.selected,
      this.value});

  FilterModel.fromJson(Map<String, dynamic> json) {
    name = json['name'] as String?;
    field = json['field'] as String?;
    selection = json['selection'] as String?;
    nested = json['nested'] as bool?;
    list = (json['list'] as List<dynamic>?)
        ?.map((e) => FilterModel.fromJson(e))
        .toList();
    value = json['value'] as int?;
    count = json['count'] as int?;
    min = json['min'] as String?;
    max = json['max'] as String?;
    colorCode = json['colorCode'] as String?;
    selected = json['selected'] ?? false;
    selectedCount = json['selectedCount'] ?? 0;
  }

  Map<String, dynamic> toJson() => {
        'name': name,
        'field': field,
        'selection': selection,
        'nested': nested,
        'list': list?.map((e) => e.toJson()).toList(),
        'value': value,
        'count': count,
        'min': min,
        'max': max,
        'colorCode': colorCode,
        'selected': selected,
        'selectedCount': selectedCount
      };
}
