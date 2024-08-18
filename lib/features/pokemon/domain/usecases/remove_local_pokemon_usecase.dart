import 'package:pokeapp/core/usecase/usecase.dart';
import 'package:pokeapp/features/pokemon/domain/entities/pokemon_entity.dart';
import 'package:pokeapp/features/pokemon/domain/repos/pokemon_repository.dart';

class RemoveLocalPokemonUseCase implements UseCase<void, PokemonEntity> {
  final PokemonRepository _pokemonRepository;

  RemoveLocalPokemonUseCase(this._pokemonRepository);

  @override
  Future<void> call({PokemonEntity? params}) {
    return _pokemonRepository.removeLocalPokemon(params!);
  }
}
