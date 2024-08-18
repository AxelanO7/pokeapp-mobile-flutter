import 'package:pokeapp/features/pokemon/domain/entities/pokemon_entity.dart';

abstract class PokemonEvent {
  final PokemonEntity? pokemon;

  const PokemonEvent({this.pokemon});
}

class GetRemotePokemons extends PokemonEvent {
  const GetRemotePokemons();
}

class GetLocalPokemons extends PokemonEvent {
  const GetLocalPokemons();
}

class RemoveLocalPokemon extends PokemonEvent {
  const RemoveLocalPokemon({required PokemonEntity pokemon}) : super(pokemon: pokemon);
}
