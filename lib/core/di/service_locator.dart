import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:pokeapp/features/pokemon/data/data_sources/local/app_database.dart';
import 'package:pokeapp/features/pokemon/data/data_sources/remote/pokemon_api.dart';
import 'package:pokeapp/features/pokemon/data/repos/pokemon_repository_impl.dart';
import 'package:pokeapp/features/pokemon/domain/repos/pokemon_repository.dart';
import 'package:pokeapp/features/pokemon/domain/usecases/get_pokemons_usecase.dart';
import 'package:pokeapp/features/pokemon/presentation/bloc/pokemon_bloc.dart';

final serviceLocator = GetIt.instance;

setupServiceLocator() async {
  final database = await $FloorAppDatabase.databaseBuilder('app_database.db').build();
  serviceLocator.registerSingleton<AppDatabase>(database);

  serviceLocator.registerSingleton(Dio());

  serviceLocator.registerSingleton<PokemonApi>(PokemonApi(dio: serviceLocator()));

  serviceLocator.registerLazySingleton<PokemonRepository>(() => PokemonRepositoryImpl(pokemonApi: serviceLocator()));

  serviceLocator.registerLazySingleton<GetPokemonsUseCase>(() => GetPokemonsUseCase(serviceLocator()));

  serviceLocator.registerFactory(() => PokemonBloc(serviceLocator()));
}
