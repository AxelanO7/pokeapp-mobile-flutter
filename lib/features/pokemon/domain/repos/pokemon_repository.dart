import 'package:pokeapp/core/resources/data_state.dart';
import 'package:pokeapp/features/pokemon/domain/entities/pokemon_detail_entity.dart';
import 'package:pokeapp/features/pokemon/domain/entities/pokemon_entity.dart';

abstract class PokemonRepository {
  // Remote Methods
  Future<DataState<List<PokemonEntity>>> getRemotePokemons();
  Future<DataState<PokemonDetailEntity>> getRemotePokemon(String id);

  // Local Methods
  Future<void> asignLocalPokemons(List<PokemonEntity> pokemons);
  Future<List<PokemonEntity>> getLocalPokemons();
  Future<void> removeLocalPokemon(PokemonEntity pokemon);
}
