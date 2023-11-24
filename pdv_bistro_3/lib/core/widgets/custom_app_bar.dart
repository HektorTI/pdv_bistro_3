// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:pdv_bistro_3/Theme/themes.dart';
import 'package:pdv_bistro_3/features/authentication/presentation/controller/geolocator_api_controller.dart';
import 'package:pdv_bistro_3/features/authentication/presentation/controller/estado_dark_light.dart';
import 'package:pdv_bistro_3/features/authentication/presentation/screen/aplicativo/tela_aplicativo.dart';
import 'package:provider/provider.dart'; // Importe sua classe ThemeNotifier

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(56.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      title: const CustomAppBarContent(),
    );
  }
}

class CustomAppBarContent extends StatefulWidget {
  const CustomAppBarContent({super.key});

  @override
  _CustomAppBarContentState createState() => _CustomAppBarContentState();
}

class _CustomAppBarContentState extends State<CustomAppBarContent> {
  String dateText = 'Carregando...';

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
    final themeNotifier = Provider.of<ThemeNotifier>(context);
    return Row(
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
              ),
            ),
            Text(
              dateText,
              style: const TextStyle(
                fontSize: 14,
              ),
            ),
          ],
        ),
        const Spacer(),
        IconButton(
          icon: themeNotifier.currentTheme == darkTheme ? const Icon(Icons.light_mode) : const Icon(Icons.dark_mode),
          onPressed: () {
            themeNotifier.toggleTheme();
          },
        ),
        IconButton(
          icon: const Icon(Icons.settings),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const TelaAplicativo(),
              ),
            );
          },
        ),
      ],
    );
  }
}
