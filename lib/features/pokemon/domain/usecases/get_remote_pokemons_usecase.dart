import 'package:pokeapp/core/resources/data_state.dart';
import 'package:pokeapp/core/usecase/usecase.dart';
import 'package:pokeapp/features/pokemon/domain/entities/pokemon_entity.dart';
import 'package:pokeapp/features/pokemon/domain/repos/pokemon_repository.dart';

class GetRemotePokemonsUseCase implements UseCase<DataState<List<PokemonEntity>>, void> {
  final PokemonRepository _pokemonRepository;

  GetRemotePokemonsUseCase(this._pokemonRepository);

  @override
  Future<DataState<List<PokemonEntity>>> call({void params}) async {
    var result = await _pokemonRepository.getRemotePokemons();
    await _pokemonRepository.asignLocalPokemons(result.data!);
    return result;
  }
}
