import 'package:pokeapp/core/resources/data_state.dart';
import 'package:pokeapp/features/pokemon/data/data_sources/remote/pokemon_api.dart';
import 'package:pokeapp/features/pokemon/domain/entities/pokemon_entity.dart';
import 'package:pokeapp/features/pokemon/domain/repos/pokemon_repository.dart';

class PokemonRepositoryImpl implements PokemonRepository {
  final PokemonApi pokemonApi;
  PokemonRepositoryImpl({
    required this.pokemonApi,
  });

  @override
  Future<DataState<List<PokemonEntity>>> getPokemons() {
      return pokemonApi.getPokemons();
  }
}
