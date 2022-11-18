List filterBy = [
  {
    "name": "Categories",
    "checked": true,
    "subCat": [
      {
        "name": "Women",
        "checked": true,
        "subCat": [
          {
            "name": "Kurta Sets",
            "checked": false,
            "subCat": [
              {"name": "Palazzo Sets", "checked": true, "subCat": []},
              {"name": "Printed Kurta Sets", "checked": true, "subCat": []},
              {"name": "Banarasi Kurta Sets", "checked": true, "subCat": []},
              {
                "name": "Jacket & Angarkha Kurta Sets",
                "checked": true,
                "subCat": []
              },
              {"name": "Sharara & Gharara Sets", "checked": true, "subCat": []},
              {"name": "Fusion Style Sets", "checked": true, "subCat": []},
              {"name": "Anarkali Sets", "checked": true, "subCat": []},
              {"name": "Straight Kurta Sets", "checked": true, "subCat": []},
              {"name": "Dhoti Sets", "checked": true, "subCat": []},
            ]
          },
          {"name": "Lehnga", "checked": true, "subCat": []},
          {"name": "Tunics & Kurtis", "checked": false, "subCat": []},
          {"name": "Sarees", "checked": false, "subCat": []},
          {"name": "Dresses", "checked": false, "subCat": []},
          {"name": "Tops", "checked": false, "subCat": []},
        ]
      },
      {"name": "Men", "checked": false, "subCat": []},
      {"name": "Jewellery", "checked": false, "subCat": []},
      {"name": "Accessories", "checked": false, "subCat": []},
      {"name": "Kids", "checked": false, "subCat": []},
      {"name": "Homeware", "checked": false, "subCat": []},
    ]
  },
  {"name": "Designers", "checked": false, "subCat": []},
  {"name": "Price Range", "checked": false, "subCat": []},
  {"name": "Size", "checked": false, "subCat": []},
  {"name": "Colours", "checked": false, "subCat": []},
  {"name": "Delivery Time", "checked": false, "subCat": []},
  {"name": "Occasion", "checked": false, "subCat": []}
];

List sortByData = [
  {"name": "Popularity", "value": 0},
  {"name": "Newest first", "value": 1},
  {"name": "Price: low to high", "value": 2},
  {"name": "Price: high to low", "value": 3},
];

class FilterModel {
  FilterModel({
    required this.name,
    required this.checked,
    required this.subCat,
  });
  late final String name;
  late final bool checked;
  late final List<FilterModel>? subCat;

  FilterModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    checked = json['checked'];
    subCat =
        List.from(json['subCat']).map((e) => FilterModel.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
    data['checked'] = checked;
    data['subCat'] = subCat?.map((e) => e.toJson()).toList();
    return data;
  }
}
