import 'package:flutter/material.dart';
import 'package:pdv_bistro_3/Theme/themes.dart';
import 'package:pdv_bistro_3/features/authentication/presentation/controller/estado_dark_light.dart';
import 'package:pdv_bistro_3/features/authentication/presentation/controller/senha_visibilidade.dart';
import 'package:pdv_bistro_3/features/authentication/presentation/screen/bemvindo/bem_vindo.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeNotifier(), // Adicionando o ThemeNotifier como um provedor
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme, // Definindo um tema padrão
      darkTheme: darkTheme,
      themeMode: themeNotifier.currentThemeMode, // Obtendo o tema do ThemeNotifier
      home: ChangeNotifierProvider(
        create: (context) => SenhaVisibilidade(),
        child: const BemVindo(),
      ),
    );
  }
}
