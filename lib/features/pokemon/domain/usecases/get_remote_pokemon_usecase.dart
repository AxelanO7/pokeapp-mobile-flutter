import 'package:pokeapp/core/resources/data_state.dart';
import 'package:pokeapp/core/usecase/usecase.dart';
import 'package:pokeapp/features/pokemon/domain/entities/pokemon_detail_entity.dart';
import 'package:pokeapp/features/pokemon/domain/repos/pokemon_repository.dart';

class GetRemotePokemonUseCase implements UseCase<DataState<PokemonDetailEntity>, void> {
  final PokemonRepository _pokemonRepository;

  GetRemotePokemonUseCase(this._pokemonRepository);

  @override
  Future<DataState<PokemonDetailEntity>> call({void params, String idPokemon = ""}) async {
    var res = await _pokemonRepository.getRemotePokemon(idPokemon);
    return res;
  }
}
