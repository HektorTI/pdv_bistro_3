// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:pdv_bistro_3/features/authentication/presentation/controller/api_controller.dart';
import 'package:pdv_bistro_3/features/authentication/presentation/screen/aplicativo/tela_aplicativo.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  _CustomAppBarState createState() => _CustomAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(56.0);
}

class _CustomAppBarState extends State<CustomAppBar> {
  String dateText = 'Carregando...';
  bool isDarkMode = false;

  final CustomAppBarController _controller = CustomAppBarController();

  @override
  void initState() {
    super.initState();
    _fetchDataFromAPI();
  }

  Future<void> _fetchDataFromAPI() async {
    final result = await _controller.fetchDateText();
    setState(() {
      dateText = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      // backgroundColor: ColorSchemes.darkColorScheme.surfaceVariant,
      title: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 50,
              width: 50, // Largura do espaço para a imagem da empresa
              child: Image.asset('assets/images/bistro3.png'),
            ),
          ),
          const SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Software Bistrô',
                style: TextStyle(
                  fontSize: 24,
                  // color: ColorSchemes.darkColorScheme.onSurface,
                ),
              ),
              Text(
                dateText,
                style: const TextStyle(
                  fontSize: 14,
                  // color: ColorSchemes.darkColorScheme.onSurface,
                ),
              ),
            ],
          ),
        ],
      ),
      actions: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: IconButton(
            icon: isDarkMode ? const Icon(Icons.light_mode) : const Icon(Icons.dark_mode),
            onPressed: () {
              setState(() {
                isDarkMode = !isDarkMode;
                // Aqui você pode alternar o tema entre claro e escuro
                // Implemente a lógica para alternar o tema do aplicativo
                // por exemplo, usando ThemeData.dark() e ThemeData.light()
                // para o tema escuro e claro, respectivamente.
                // Theme.of(context).setTheme(isDarkMode ? darkTheme : lightTheme);
              });
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: IconButton(
            icon: const Icon(
              Icons.settings,
              // color: ColorSchemes.darkColorScheme.onSurface,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const TelaAplicativo(),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
