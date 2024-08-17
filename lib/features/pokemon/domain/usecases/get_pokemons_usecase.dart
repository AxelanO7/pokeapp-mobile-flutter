import 'package:pokeapp/core/resources/data_state.dart';
import 'package:pokeapp/core/usecase/usecase.dart';
import 'package:pokeapp/features/pokemon/domain/entities/pokemon_entity.dart';
import 'package:pokeapp/features/pokemon/domain/repos/pokemon_repository.dart';

class GetPokemonsUseCase implements UseCase<DataState<List<PokemonEntity>>, void> {
  final PokemonRepository _pokemonRepositoryImpl;

  GetPokemonsUseCase(this._pokemonRepositoryImpl);

  @override
  Future<DataState<List<PokemonEntity>>> call({void params}) async {
    return _pokemonRepositoryImpl.getPokemons();
  }

  removePokemon(PokemonEntity item) {
    _pokemonRepositoryImpl.removePokemon(item);
  }

  assignPokemons(List<PokemonEntity> pokemons) {
    _pokemonRepositoryImpl.assignPokemons(pokemons);
  }
}
