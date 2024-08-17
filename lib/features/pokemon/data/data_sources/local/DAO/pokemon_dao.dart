import 'package:floor/floor.dart';
import 'package:pokeapp/features/pokemon/data/models/pokemon_model.dart';

@dao
abstract class PokemonDao {
  @Insert()
  Future<void> insertArticle(PokemonModel pokemon);

  @delete
  Future<void> deleteArticle(PokemonModel pokemon);

  @Query('SELECT * FROM articles')
  Future<List<PokemonModel>> getArticles();
}
