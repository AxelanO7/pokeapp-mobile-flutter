import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokeapp/core/di/service_locator.dart';
import 'package:pokeapp/features/app/routes.dart';
import 'package:pokeapp/features/app/themes.dart';
import 'package:pokeapp/features/pokemon/presentation/bloc/pokemon_bloc.dart';
import 'package:pokeapp/features/pokemon/presentation/bloc/pokemon_event.dart';
import 'package:pokeapp/features/pokemon/presentation/views/pokemon_view.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<PokemonBloc>(
      create: (context) => serviceLocator()..add(const GetPokemons()),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppThemes.themeData,
        onGenerateRoute: AppRoutes.onGenerateRoutes,
        home: const PokemonView(),
      ),
    );
  }
}
