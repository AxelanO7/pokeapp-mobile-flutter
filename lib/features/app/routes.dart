import 'package:flutter/material.dart';
import 'package:pokeapp/features/pokemon/presentation/views/pokemon_view.dart';
import 'package:pokeapp/features/pokemon/presentation/views/welcome_view.dart';

class AppRoutes {
  static Route onGenerateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case '/pokemon':
        return _materialRoute(const PokemonView());
      default:
        return _materialRoute(const WelcomeView());
    }
  }

  static Route<dynamic> _materialRoute(Widget view) {
    return MaterialPageRoute(builder: (_) => view);
  }
}
