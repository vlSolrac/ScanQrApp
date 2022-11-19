import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr/providers/ui_provider.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final uiProvider = Provider.of<UiProvider>(context);

    final currentIndex = uiProvider.currentIndex;
    return BottomNavigationBar(
      onTap: (value) => uiProvider.currentIndex = value,
      currentIndex: currentIndex,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.map_rounded), label: "Map"),
        BottomNavigationBarItem(
            icon: Icon(Icons.compass_calibration), label: "Cordenadas"),
      ],
    );
  }
}
