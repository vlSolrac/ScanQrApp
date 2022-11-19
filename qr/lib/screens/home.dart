import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr/providers/ui_provider.dart';
import 'package:qr/screens/screens.dart';

import 'package:qr/theme/theme.dart';
import 'package:qr/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
//Parametes.

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //global variables.

    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(AppAssets.delete),
            splashRadius: 20,
          ),
        ],
      ),
      body: _HomeBody(),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: const CustomFloatingAactionButton(),
      bottomNavigationBar: const CustomBottomNavigationBar(),
    );
  }
}

class _HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final uiProvider = Provider.of<UiProvider>(context);
    int currentIndex = uiProvider.currentIndex;
    switch (currentIndex) {
      case 0:
        return const MapsScreen();
      case 1:
        return const DirectiosScreen();
      default:
        return const MapsScreen();
    }
  }
}
