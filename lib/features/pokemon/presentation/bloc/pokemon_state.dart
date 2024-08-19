import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:pokeapp/features/pokemon/domain/entities/pokemon_detail_entity.dart';
import 'package:pokeapp/features/pokemon/domain/entities/pokemon_entity.dart';

abstract class PokemonState extends Equatable {
  final List<PokemonEntity>? pokemons;
  final PokemonDetailEntity? pokemon;
  final DioException? error;

  const PokemonState({this.pokemons, this.error, this.pokemon});

  @override
  List<Object> get props => [pokemons!, error!];
}

class PokemonsLoading extends PokemonState {
  const PokemonsLoading();
}

class PokemonsDone extends PokemonState {
  const PokemonsDone({required List<PokemonEntity> pokemons}) : super(pokemons: pokemons);
}

class PokemonsError extends PokemonState {
  const PokemonsError({required DioException error}) : super(error: error);
}

class PokemonDone extends PokemonState {
  const PokemonDone({required PokemonDetailEntity pokemon}) : super(pokemon: pokemon);
}

class PokemonLoading extends PokemonState {
  const PokemonLoading();
}