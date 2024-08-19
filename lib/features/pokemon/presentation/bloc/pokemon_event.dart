import 'package:pokeapp/features/pokemon/domain/entities/pokemon_entity.dart';

abstract class PokemonEvent {
  const PokemonEvent();
}

class GetRemotePokemons extends PokemonEvent {
  const GetRemotePokemons();
}

class GetRemotePokemon extends PokemonEvent {
  final String idPokemon;

  const GetRemotePokemon({required this.idPokemon});
}

class GetLocalPokemons extends PokemonEvent {
  const GetLocalPokemons();
}

class RemoveLocalPokemon extends PokemonEvent {
  final PokemonEntity? pokemon;

  const RemoveLocalPokemon({this.pokemon});
}

class SearchLocalPokemon extends PokemonEvent {
  final String? query;

  const SearchLocalPokemon({this.query});
}
