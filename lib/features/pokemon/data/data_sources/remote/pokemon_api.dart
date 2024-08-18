import 'package:dio/dio.dart';
import 'package:pokeapp/core/resources/data_state.dart';
import 'package:pokeapp/features/pokemon/domain/entities/pokemon_entity.dart';

class PokemonApi {
  final Dio dio;

  PokemonApi({required this.dio});

  Future<DataState<List<PokemonEntity>>> getPokemons() async {
    // final res = await dio.get('${Constants().apiBaseUrl}/pokemon/');
    final res = await dio.get('https://pokeapi.co/api/v2/pokemon/');
    var results = res.data['results'] as List;
    var pokemons = results.map((e) => PokemonEntity.fromJson(e)).toList();
    return DataSuccess(pokemons);
  }
}
