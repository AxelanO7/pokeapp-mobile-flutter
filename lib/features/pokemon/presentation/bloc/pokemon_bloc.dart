import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokeapp/core/resources/data_state.dart';
import 'package:pokeapp/features/pokemon/domain/entities/pokemon_entity.dart';
import 'package:pokeapp/features/pokemon/domain/usecases/get_pokemons_usecase.dart';
import 'package:pokeapp/features/pokemon/presentation/bloc/pokemon_event.dart';
import 'package:pokeapp/features/pokemon/presentation/bloc/pokemon_state.dart';

class PokemonBloc extends Bloc<PokemonEvent, PokemonState> {
  final GetPokemonsUseCase _getPokemonsUseCase;

  PokemonBloc(this._getPokemonsUseCase) : super(const PokemonsLoading()) {
    on<GetPokemons>(onGetPokemons);
  }

  Future<void> onGetPokemons(GetPokemons event, Emitter<PokemonState> emit) async {
    final dataState = await _getPokemonsUseCase();
    if (dataState is DataSuccess && dataState.data!.isNotEmpty) {
      assignPokemons(dataState.data!);
      emit(PokemonsDone(pokemons: dataState.data!));
    }

    if (dataState is DataFailed) {
      debugPrint(dataState.error.toString());
      emit(PokemonsError(error: dataState.error!));
    }
  }

  assignPokemons(List<PokemonEntity> pokemons) {
    _getPokemonsUseCase.assignPokemons(pokemons);
  }

  removePokemon(PokemonEntity item) {
    add(RemovePokemon(item: item));
    _getPokemonsUseCase.removePokemon(item);
  }
}
