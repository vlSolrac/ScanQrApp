import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr/providers/ui_provider.dart';

import 'package:qr/routers/routes.dart';
import 'package:qr/theme/theme.dart';

void main() {
  runApp(const AppState());
}

class AppState extends StatelessWidget {
  const AppState({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UiProvider()),
      ],
      child: const MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'QR',
      theme: AppTheme.themeLight,
      initialRoute: AppRoutes.home,
      routes: AppRoutes.routes,
    );
  }
}
