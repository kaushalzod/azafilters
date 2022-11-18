import 'package:azafilters/constant.dart';
import 'package:azafilters/helperWidgets/appbar_widget.dart';
import 'package:azafilters/refine/widgets/refine_search_bar.dart';
import 'package:flutter/material.dart';

final List item = [
  "Aalyxir",
  "Aamli",
  "Aanchal Sayal",
  "Aapro",
  "Aarbee By Ravi Bhalotia",
  "Aaree Accessories",
  "Aarke Ritu Kumar",
  "Aarti & Juhi Grover",
  "Aarti Mahtani",
  "Bhavik Shah",
  "Bhavin Vora",
  "Bhavna Kumar",
  "Bhawna Rao"
];

class RefineLevelPage extends StatelessWidget {
  final String title;
  const RefineLevelPage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greyScale100,
      appBar: appbarWidget(title: title),
      body: Column(
        children: [
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: refineSearchBar(hint: title)),
          SizedBox(
            height: 500,
            child: ListView.builder(
              itemBuilder: (context, index) {
                if ((index != 0 && item[index][0] != item[index - 1][0]) ||
                    index == 0) {
                  return Column(
                    children: [Text(item[index][0]), Text(item[index])],
                  );
                } else {
                  return Text(item[index]);
                }
              },
              itemCount: item.length,
            ),
          )
        ],
      ),
    );
  }
}
