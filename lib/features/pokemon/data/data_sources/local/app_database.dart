import 'dart:async';

import 'package:floor/floor.dart';
import 'package:pokeapp/features/pokemon/data/data_sources/local/DAO/pokemon_dao.dart';
import 'package:pokeapp/features/pokemon/data/models/pokemon_model.dart';
import 'package:sqflite/sqflite.dart' as sqflite;

part 'app_database.g.dart';

@Database(version: 1, entities: [PokemonModel])
abstract class AppDatabase extends FloorDatabase {
  PokemonDao get articleDao;
}
