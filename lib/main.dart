import 'package:azafilters/provider/refine_provider.dart';
import 'package:azafilters/refine/refine_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider<RefineProvider>(
        create: (context) => RefineProvider(),
      )
    ], child: const MaterialApp(home: RefinePage()));
  }
}
