import 'package:floor/floor.dart';
import 'package:pokeapp/features/pokemon/data/models/pokemon_model.dart';

@dao
abstract class PokemonDao {
  // insert all pokemons with list
  @Insert(onConflict: OnConflictStrategy.replace)
  Future<void> insertPokemons(List<PokemonModel> pokemons);

  @Insert()
  Future<void> insertPokemon(PokemonModel pokemon);

  @delete
  Future<void> deletePokemon(PokemonModel pokemon);

  @Query('SELECT * FROM pokemon')
  Future<List<PokemonModel>> getPokemons();
}
