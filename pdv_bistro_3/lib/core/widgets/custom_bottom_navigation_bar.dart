import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final List<IconData> icons;
  final List<String> labels;
  final List<Function> onPressed;

  const CustomBottomNavigationBar({super.key, required this.icons, required this.labels, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(icons.length, (index) {
          return Column(
            children: [
              IconButton(
                icon: Icon(
                  icons[index],
                  // color: customColorScheme.onSurface,
                ),
                onPressed: () {
                  onPressed[index]();
                },
              ),
              Text(
                labels[index],
                style: const TextStyle(
                  // color: customColorScheme.onSurface,
                  fontSize: 10,
                ),
              ),
            ],
          );
        }),
      ),
    );
  }
}
