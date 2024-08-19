import 'package:pokeapp/core/usecase/usecase.dart';
import 'package:pokeapp/features/pokemon/domain/entities/pokemon_entity.dart';
import 'package:pokeapp/features/pokemon/domain/repos/pokemon_repository.dart';

class SearchLocalPokemonUseCase implements UseCase<List<PokemonEntity>, void> {
  final PokemonRepository _pokemonRepository;

  SearchLocalPokemonUseCase(this._pokemonRepository);

  @override
  Future<List<PokemonEntity>> call({void params, String query = ""}) async {
    List<PokemonEntity> pokemons = await _pokemonRepository.getLocalPokemons();
    var res = pokemons.where((element) => element.name?.contains(query) ?? false).toList();
    return res;
  }
}
