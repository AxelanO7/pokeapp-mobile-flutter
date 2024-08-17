import 'package:flutter/material.dart';
import 'package:pokeapp/features/pokemon/presentation/views/pokemon_view.dart';
import 'package:pokeapp/features/pokemon/presentation/views/welcome_view.dart';

class AppRoutes {
  static Route onGenerateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return _materialRoute(const WelcomeView());
      case '/pokemon':
        return _materialRoute(const PokemonView());
      default:
        return _materialRoute(const PokemonView());
    }
  }

  static Route<dynamic> _materialRoute(Widget view) {
    return MaterialPageRoute(builder: (_) => view);
  }
}
