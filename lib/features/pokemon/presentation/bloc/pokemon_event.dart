import 'package:pokeapp/features/pokemon/domain/entities/pokemon_entity.dart';

abstract class PokemonEvent {
  const PokemonEvent();
}

class GetPokemons extends PokemonEvent {
  const GetPokemons();
}

class RemovePokemon extends PokemonEvent {
  final PokemonEntity item;

  const RemovePokemon({required this.item});
}