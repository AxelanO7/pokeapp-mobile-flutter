import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:pokeapp/core/resources/data_state.dart';
import 'package:pokeapp/core/shared/constants.dart';
import 'package:pokeapp/features/pokemon/domain/entities/pokemon_detail_entity.dart';
import 'package:pokeapp/features/pokemon/domain/entities/pokemon_entity.dart';

class PokemonApi {
  final Dio dio;

  PokemonApi({required this.dio});

  Future<DataState<List<PokemonEntity>>> getPokemons() async {
    final res = await dio.get('${Constants().apiBaseUrl}/pokemon/');
    var results = res.data['results'] as List;
    var pokemons = results.map((e) => PokemonEntity.fromJson(e)).toList();
    return DataSuccess(pokemons);
  }

  Future<DataState<PokemonDetailEntity>> getPokemon(String id) async {
    final res = await dio.get('${Constants().apiBaseUrl}/pokemon/$id');
    var pokemon = PokemonDetailEntity.fromJson(res.data);
    return DataSuccess(pokemon);
  }
}
