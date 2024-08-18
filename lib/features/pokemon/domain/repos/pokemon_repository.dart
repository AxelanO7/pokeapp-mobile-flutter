import 'package:pokeapp/core/resources/data_state.dart';
import 'package:pokeapp/features/pokemon/domain/entities/pokemon_entity.dart';

abstract class PokemonRepository {
  // Remote Methods
  Future<DataState<List<PokemonEntity>>> getRemotePokemons();

  // Local Methods
  Future<List<PokemonEntity>> getLocalPokemons();
  Future<void> removeLocalPokemon(PokemonEntity pokemon);
}
