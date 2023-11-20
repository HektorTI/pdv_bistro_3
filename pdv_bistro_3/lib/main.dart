import 'package:flutter/material.dart';
import 'package:pdv_bistro_3/Theme/themes.dart';
import 'package:pdv_bistro_3/features/authentication/presentation/screen/bemvindo/bem_vindo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: lightTheme,
      darkTheme: darkTheme,
      home: const BemVindo(),
    );
  }
}
