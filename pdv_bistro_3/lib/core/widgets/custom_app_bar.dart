import 'package:flutter/material.dart';
import 'package:pdv_bistro_3/Theme/themes.dart';
import 'package:pdv_bistro_3/features/authentication/presentation/controller/estado_dark_light.dart';
import 'package:pdv_bistro_3/features/authentication/presentation/screen/aplicativo/tela_aplicativo.dart';
import 'package:provider/provider.dart'; // Importe sua classe ThemeNotifier

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(56.0);

  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);

    return AppBar(
      automaticallyImplyLeading: false,
      title: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 50,
              width: 50,
              child: Image.asset('assets/images/bistro3.png'),
            ),
          ),
          const SizedBox(width: 20),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Software Bistrô',
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
              Text(
                'Carregando...', // Você pode usar o valor de dateText aqui
                style: TextStyle(
                  fontSize: 14,
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
            icon: themeNotifier.currentTheme == darkTheme ? const Icon(Icons.light_mode) : const Icon(Icons.dark_mode),
            onPressed: () {
              themeNotifier.toggleTheme();
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: IconButton(
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
        ),
      ],
    );
  }
}
