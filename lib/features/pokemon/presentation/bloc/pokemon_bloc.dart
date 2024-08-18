import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokeapp/core/resources/data_state.dart';
import 'package:pokeapp/features/pokemon/domain/usecases/get_local_pokemons_usecase.dart';
import 'package:pokeapp/features/pokemon/domain/usecases/get_remote_pokemons_usecase.dart';
import 'package:pokeapp/features/pokemon/domain/usecases/remove_local_pokemon_usecase.dart';
import 'package:pokeapp/features/pokemon/presentation/bloc/pokemon_event.dart';
import 'package:pokeapp/features/pokemon/presentation/bloc/pokemon_state.dart';

class PokemonBloc extends Bloc<PokemonEvent, PokemonState> {
  final GetRemotePokemonsUseCase _getRemotePokemonsUseCase;
  final GetLocalPokemonsUseCase _getLocalPokemonsUseCase;
  final RemoveLocalPokemonUseCase _removeLocalPokemonUseCase;

  PokemonBloc(
    this._getRemotePokemonsUseCase,
    this._getLocalPokemonsUseCase,
    this._removeLocalPokemonUseCase,
  ) : super(const PokemonsLoading()) {
    on<GetRemotePokemons>(onGetRemotePokemons);
    on<GetLocalPokemons>(onGetLocalPokemons);
    on<RemoveLocalPokemon>(onRemovePokemon);
  }

  Future<void> onGetRemotePokemons(GetRemotePokemons event, Emitter<PokemonState> emit) async {
    final dataState = await _getRemotePokemonsUseCase();
    if (dataState is DataSuccess && dataState.data!.isNotEmpty) {
      emit(PokemonsDone(pokemons: dataState.data!));
    }
    if (dataState is DataFailed) {
      debugPrint(dataState.error.toString());
      emit(PokemonsError(error: dataState.error!));
    }
  }

  Future<void> onGetLocalPokemons(GetLocalPokemons event, Emitter<PokemonState> emit) async {
    print(00);
    final dataState = await _getLocalPokemonsUseCase();
    print(01);
    emit(PokemonsDone(pokemons: dataState));
    print(02);
  }

  Future<void> onRemovePokemon(RemoveLocalPokemon event, Emitter<PokemonState> emit) async {
    print(0);
    emit(const PokemonsLoading());
    await _removeLocalPokemonUseCase(params: event.pokemon);
    print(1);
    await onGetLocalPokemons(GetLocalPokemons(), emit);
    print(2);
  }
}
