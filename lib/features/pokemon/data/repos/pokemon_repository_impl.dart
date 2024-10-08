import 'package:pokeapp/core/resources/data_state.dart';
import 'package:pokeapp/features/pokemon/data/data_sources/local/app_database.dart';
import 'package:pokeapp/features/pokemon/data/data_sources/remote/pokemon_api.dart';
import 'package:pokeapp/features/pokemon/data/models/pokemon_model.dart';
import 'package:pokeapp/features/pokemon/domain/entities/pokemon_detail_entity.dart';
import 'package:pokeapp/features/pokemon/domain/entities/pokemon_entity.dart';
import 'package:pokeapp/features/pokemon/domain/repos/pokemon_repository.dart';

class PokemonRepositoryImpl implements PokemonRepository {
  final PokemonApi pokemonApi;
  final AppDatabase _appDatabase;

  PokemonRepositoryImpl(this._appDatabase, this.pokemonApi);

  // Remote
  @override
  Future<DataState<List<PokemonEntity>>> getRemotePokemons() {
    return pokemonApi.getPokemons();
  }

  @override
  Future<DataState<PokemonDetailEntity>> getRemotePokemon(String id) {
    return pokemonApi.getPokemon(id);
  }

  // Local
  @override
  Future<void> asignLocalPokemons(List<PokemonEntity> pokemons) {
    return _appDatabase.pokemonDao.insertPokemons(pokemons.map((e) => PokemonModel.fromEntity(e)).toList());
  }

  @override
  Future<List<PokemonEntity>> getLocalPokemons() {
    return _appDatabase.pokemonDao.getPokemons();
  }

  @override
  Future<void> removeLocalPokemon(PokemonEntity pokemon) {
    return _appDatabase.pokemonDao.deletePokemon(PokemonModel.fromEntity(pokemon));
  }
}
