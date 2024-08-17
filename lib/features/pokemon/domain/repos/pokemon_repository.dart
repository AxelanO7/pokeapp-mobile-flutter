import 'package:pokeapp/core/resources/data_state.dart';
import 'package:pokeapp/features/pokemon/domain/entities/pokemon_entity.dart';

abstract class PokemonRepository {
  // API Methods
  Future<DataState<List<PokemonEntity>>> getPokemons();

  // Database Methods
  Future<List<PokemonEntity>> getDBPokemon();
  Future<void> removePokemon(PokemonEntity pokemon);
  Future<void> assignPokemons(List<PokemonEntity> pokemons);
}
