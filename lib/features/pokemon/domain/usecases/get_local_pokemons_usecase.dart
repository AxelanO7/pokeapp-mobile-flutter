import 'package:pokeapp/core/usecase/usecase.dart';
import 'package:pokeapp/features/pokemon/domain/entities/pokemon_entity.dart';
import 'package:pokeapp/features/pokemon/domain/repos/pokemon_repository.dart';

class GetLocalPokemonsUseCase implements UseCase<List<PokemonEntity>, void> {
  final PokemonRepository _pokemonRepository;

  GetLocalPokemonsUseCase(this._pokemonRepository);

  @override
  Future<List<PokemonEntity>> call({void params}) async {
    var res = await _pokemonRepository.getLocalPokemons();
    return _pokemonRepository.getLocalPokemons();
  }
}
