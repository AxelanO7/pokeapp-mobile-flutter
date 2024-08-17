import 'package:pokeapp/core/resources/data_state.dart';
import 'package:pokeapp/features/pokemon/data/data_sources/local/app_database.dart';
import 'package:pokeapp/features/pokemon/data/data_sources/remote/pokemon_api.dart';
import 'package:pokeapp/features/pokemon/data/models/pokemon_model.dart';
import 'package:pokeapp/features/pokemon/domain/entities/pokemon_entity.dart';
import 'package:pokeapp/features/pokemon/domain/repos/pokemon_repository.dart';

class PokemonRepositoryImpl implements PokemonRepository {
  final PokemonApi pokemonApi;
  final AppDatabase _appDatabase;

  PokemonRepositoryImpl(this._appDatabase, this.pokemonApi);

  @override
  Future<DataState<List<PokemonEntity>>> getPokemons() {
    return pokemonApi.getPokemons();
  }

  @override
  Future<List<PokemonEntity>> getDBPokemon() {
    return _appDatabase.pokemonDao.getPokemons();
  }

  @override
  Future<void> removePokemon(PokemonEntity pokemon) {
    return _appDatabase.pokemonDao.deletePokemon(PokemonModel.fromEntity(pokemon));
  }

  @override
  Future<void> assignPokemons(List<PokemonEntity> pokemons) {
    return _appDatabase.pokemonDao.insertPokemons(pokemons.map((e) => PokemonModel.fromEntity(e)).toList());
  }
}
