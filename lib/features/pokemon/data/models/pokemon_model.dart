import 'package:floor/floor.dart';
import 'package:pokeapp/features/pokemon/domain/entities/pokemon_entity.dart';

@Entity(tableName: 'pokemons', primaryKeys: ['name'])
class PokemonModel extends PokemonEntity {
  const PokemonModel({
    String? name,
    String? url,
  }) : super(
          name: name,
          url: url,
        );

  factory PokemonModel.fromJson(Map<String, dynamic> map) {
    return PokemonModel(
      name: map['name'],
      url: map['url'],
    );
  }

  factory PokemonModel.fromEntity(PokemonEntity entity) {
    return PokemonModel(
      name: entity.name,
      url: entity.url,
    );
  }
}
