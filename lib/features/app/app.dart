import 'package:flutter/material.dart';
import 'package:pokeapp/features/app/routes.dart';
import 'package:pokeapp/features/app/themes.dart';
import 'package:pokeapp/features/pokemon/presentation/views/welcome_view.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppThemes.themeData,
      onGenerateRoute: AppRoutes.onGenerateRoutes,
      home: const WelcomeView(),
    );
  }
}
