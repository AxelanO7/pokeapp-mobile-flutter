import 'package:equatable/equatable.dart';

class PokemonDetailEntity extends Equatable {
  const PokemonDetailEntity({
    required this.abilities,
    required this.baseExperience,
    required this.cries,
    required this.forms,
    required this.gameIndices,
    required this.height,
    required this.heldItems,
    required this.id,
    required this.isDefault,
    required this.locationAreaEncounters,
    required this.moves,
    required this.name,
    required this.order,
    required this.pastAbilities,
    required this.pastTypes,
    required this.species,
    required this.sprites,
    required this.stats,
    required this.types,
    required this.weight,
  });

  final List<Ability> abilities;
  final int? baseExperience;
  final Cries? cries;
  final List<Species> forms;
  final List<GameIndex> gameIndices;
  final int? height;
  final List<dynamic> heldItems;
  final int? id;
  final bool? isDefault;
  final String? locationAreaEncounters;
  final List<Move> moves;
  final String? name;
  final int? order;
  final List<dynamic> pastAbilities;
  final List<dynamic> pastTypes;
  final Species? species;
  final Sprites? sprites;
  final List<Stat> stats;
  final List<Type> types;
  final int? weight;

  factory PokemonDetailEntity.fromJson(Map<String, dynamic> json){
    return PokemonDetailEntity(
      abilities: json["abilities"] == null ? [] : List<Ability>.from(json["abilities"]!.map((x) => Ability.fromJson(x))),
      baseExperience: json["base_experience"],
      cries: json["cries"] == null ? null : Cries.fromJson(json["cries"]),
      forms: json["forms"] == null ? [] : List<Species>.from(json["forms"]!.map((x) => Species.fromJson(x))),
      gameIndices: json["game_indices"] == null ? [] : List<GameIndex>.from(json["game_indices"]!.map((x) => GameIndex.fromJson(x))),
      height: json["height"],
      heldItems: json["held_items"] == null ? [] : List<dynamic>.from(json["held_items"]!.map((x) => x)),
      id: json["id"],
      isDefault: json["is_default"],
      locationAreaEncounters: json["location_area_encounters"],
      moves: json["moves"] == null ? [] : List<Move>.from(json["moves"]!.map((x) => Move.fromJson(x))),
      name: json["name"],
      order: json["order"],
      pastAbilities: json["past_abilities"] == null ? [] : List<dynamic>.from(json["past_abilities"]!.map((x) => x)),
      pastTypes: json["past_types"] == null ? [] : List<dynamic>.from(json["past_types"]!.map((x) => x)),
      species: json["species"] == null ? null : Species.fromJson(json["species"]),
      sprites: json["sprites"] == null ? null : Sprites.fromJson(json["sprites"]),
      stats: json["stats"] == null ? [] : List<Stat>.from(json["stats"]!.map((x) => Stat.fromJson(x))),
      types: json["types"] == null ? [] : List<Type>.from(json["types"]!.map((x) => Type.fromJson(x))),
      weight: json["weight"],
    );
  }

  Map<String, dynamic> toJson() => {
    "abilities": abilities.map((x) => x.toJson()).toList(),
    "base_experience": baseExperience,
    "cries": cries?.toJson(),
    "forms": forms.map((x) => x.toJson()).toList(),
    "game_indices": gameIndices.map((x) => x.toJson()).toList(),
    "height": height,
    "held_items": heldItems.map((x) => x).toList(),
    "id": id,
    "is_default": isDefault,
    "location_area_encounters": locationAreaEncounters,
    "moves": moves.map((x) => x.toJson()).toList(),
    "name": name,
    "order": order,
    "past_abilities": pastAbilities.map((x) => x).toList(),
    "past_types": pastTypes.map((x) => x).toList(),
    "species": species?.toJson(),
    "sprites": sprites?.toJson(),
    "stats": stats.map((x) => x.toJson()).toList(),
    "types": types.map((x) => x.toJson()).toList(),
    "weight": weight,
  };

  @override
  List<Object?> get props => [
    abilities, baseExperience, cries, forms, gameIndices, height, heldItems, id, isDefault, locationAreaEncounters, moves, name, order, pastAbilities, pastTypes, species, sprites, stats, types, weight, ];
}

class Ability extends Equatable {
  const Ability({
    required this.ability,
    required this.isHidden,
    required this.slot,
  });

  final Species? ability;
  final bool? isHidden;
  final int? slot;

  factory Ability.fromJson(Map<String, dynamic> json){
    return Ability(
      ability: json["ability"] == null ? null : Species.fromJson(json["ability"]),
      isHidden: json["is_hidden"],
      slot: json["slot"],
    );
  }

  Map<String, dynamic> toJson() => {
    "ability": ability?.toJson(),
    "is_hidden": isHidden,
    "slot": slot,
  };

  @override
  List<Object?> get props => [
    ability, isHidden, slot, ];
}

class Species extends Equatable {
  const Species({
    required this.name,
    required this.url,
  });

  final String? name;
  final String? url;

  factory Species.fromJson(Map<String, dynamic> json){
    return Species(
      name: json["name"],
      url: json["url"],
    );
  }

  Map<String, dynamic> toJson() => {
    "name": name,
    "url": url,
  };

  @override
  List<Object?> get props => [
    name, url, ];
}

class Cries extends Equatable {
  const Cries({
    required this.latest,
    required this.legacy,
  });

  final String? latest;
  final String? legacy;

  factory Cries.fromJson(Map<String, dynamic> json){
    return Cries(
      latest: json["latest"],
      legacy: json["legacy"],
    );
  }

  Map<String, dynamic> toJson() => {
    "latest": latest,
    "legacy": legacy,
  };

  @override
  List<Object?> get props => [
    latest, legacy, ];
}

class GameIndex extends Equatable {
  const GameIndex({
    required this.gameIndex,
    required this.version,
  });

  final int? gameIndex;
  final Species? version;

  factory GameIndex.fromJson(Map<String, dynamic> json){
    return GameIndex(
      gameIndex: json["game_index"],
      version: json["version"] == null ? null : Species.fromJson(json["version"]),
    );
  }

  Map<String, dynamic> toJson() => {
    "game_index": gameIndex,
    "version": version?.toJson(),
  };

  @override
  List<Object?> get props => [
    gameIndex, version, ];
}

class Move extends Equatable {
  const Move({
    required this.move,
    required this.versionGroupDetails,
  });

  final Species? move;
  final List<VersionGroupDetail> versionGroupDetails;

  factory Move.fromJson(Map<String, dynamic> json){
    return Move(
      move: json["move"] == null ? null : Species.fromJson(json["move"]),
      versionGroupDetails: json["version_group_details"] == null ? [] : List<VersionGroupDetail>.from(json["version_group_details"]!.map((x) => VersionGroupDetail.fromJson(x))),
    );
  }

  Map<String, dynamic> toJson() => {
    "move": move?.toJson(),
    "version_group_details": versionGroupDetails.map((x) => x.toJson()).toList(),
  };

  @override
  List<Object?> get props => [
    move, versionGroupDetails, ];
}

class VersionGroupDetail extends Equatable {
  const VersionGroupDetail({
    required this.levelLearnedAt,
    required this.moveLearnMethod,
    required this.versionGroup,
  });

  final int? levelLearnedAt;
  final Species? moveLearnMethod;
  final Species? versionGroup;

  factory VersionGroupDetail.fromJson(Map<String, dynamic> json){
    return VersionGroupDetail(
      levelLearnedAt: json["level_learned_at"],
      moveLearnMethod: json["move_learn_method"] == null ? null : Species.fromJson(json["move_learn_method"]),
      versionGroup: json["version_group"] == null ? null : Species.fromJson(json["version_group"]),
    );
  }

  Map<String, dynamic> toJson() => {
    "level_learned_at": levelLearnedAt,
    "move_learn_method": moveLearnMethod?.toJson(),
    "version_group": versionGroup?.toJson(),
  };

  @override
  List<Object?> get props => [
    levelLearnedAt, moveLearnMethod, versionGroup, ];
}

class GenerationV extends Equatable {
  const GenerationV({
    required this.blackWhite,
  });

  final Sprites? blackWhite;

  factory GenerationV.fromJson(Map<String, dynamic> json){
    return GenerationV(
      blackWhite: json["black-white"] == null ? null : Sprites.fromJson(json["black-white"]),
    );
  }

  Map<String, dynamic> toJson() => {
    "black-white": blackWhite?.toJson(),
  };

  @override
  List<Object?> get props => [
    blackWhite, ];
}

class GenerationIv extends Equatable {
  const GenerationIv({
    required this.diamondPearl,
    required this.heartgoldSoulsilver,
    required this.platinum,
  });

  final Sprites? diamondPearl;
  final Sprites? heartgoldSoulsilver;
  final Sprites? platinum;

  factory GenerationIv.fromJson(Map<String, dynamic> json){
    return GenerationIv(
      diamondPearl: json["diamond-pearl"] == null ? null : Sprites.fromJson(json["diamond-pearl"]),
      heartgoldSoulsilver: json["heartgold-soulsilver"] == null ? null : Sprites.fromJson(json["heartgold-soulsilver"]),
      platinum: json["platinum"] == null ? null : Sprites.fromJson(json["platinum"]),
    );
  }

  Map<String, dynamic> toJson() => {
    "diamond-pearl": diamondPearl?.toJson(),
    "heartgold-soulsilver": heartgoldSoulsilver?.toJson(),
    "platinum": platinum?.toJson(),
  };

  @override
  List<Object?> get props => [
    diamondPearl, heartgoldSoulsilver, platinum, ];
}

class Versions extends Equatable {
  const Versions({
    required this.generationI,
    required this.generationIi,
    required this.generationIii,
    required this.generationIv,
    required this.generationV,
    required this.generationVi,
    required this.generationVii,
    required this.generationViii,
  });

  final GenerationI? generationI;
  final GenerationIi? generationIi;
  final GenerationIii? generationIii;
  final GenerationIv? generationIv;
  final GenerationV? generationV;
  final Map<String, Home> generationVi;
  final GenerationVii? generationVii;
  final GenerationViii? generationViii;

  factory Versions.fromJson(Map<String, dynamic> json){
    return Versions(
      generationI: json["generation-i"] == null ? null : GenerationI.fromJson(json["generation-i"]),
      generationIi: json["generation-ii"] == null ? null : GenerationIi.fromJson(json["generation-ii"]),
      generationIii: json["generation-iii"] == null ? null : GenerationIii.fromJson(json["generation-iii"]),
      generationIv: json["generation-iv"] == null ? null : GenerationIv.fromJson(json["generation-iv"]),
      generationV: json["generation-v"] == null ? null : GenerationV.fromJson(json["generation-v"]),
      generationVi: Map.from(json["generation-vi"]).map((k, v) => MapEntry<String, Home>(k, Home.fromJson(v))),
      generationVii: json["generation-vii"] == null ? null : GenerationVii.fromJson(json["generation-vii"]),
      generationViii: json["generation-viii"] == null ? null : GenerationViii.fromJson(json["generation-viii"]),
    );
  }

  Map<String, dynamic> toJson() => {
    "generation-i": generationI?.toJson(),
    "generation-ii": generationIi?.toJson(),
    "generation-iii": generationIii?.toJson(),
    "generation-iv": generationIv?.toJson(),
    "generation-v": generationV?.toJson(),
    "generation-vi": Map.from(generationVi).map((k, v) => MapEntry<String, dynamic>(k, v?.toJson())),
    "generation-vii": generationVii?.toJson(),
    "generation-viii": generationViii?.toJson(),
  };

  @override
  List<Object?> get props => [
    generationI, generationIi, generationIii, generationIv, generationV, generationVi, generationVii, generationViii, ];
}

class Other extends Equatable {
  const Other({
    required this.dreamWorld,
    required this.home,
    required this.officialArtwork,
    required this.showdown,
  });

  final DreamWorld? dreamWorld;
  final Home? home;
  final OfficialArtwork? officialArtwork;
  final Sprites? showdown;

  factory Other.fromJson(Map<String, dynamic> json){
    return Other(
      dreamWorld: json["dream_world"] == null ? null : DreamWorld.fromJson(json["dream_world"]),
      home: json["home"] == null ? null : Home.fromJson(json["home"]),
      officialArtwork: json["official-artwork"] == null ? null : OfficialArtwork.fromJson(json["official-artwork"]),
      showdown: json["showdown"] == null ? null : Sprites.fromJson(json["showdown"]),
    );
  }

  Map<String, dynamic> toJson() => {
    "dream_world": dreamWorld?.toJson(),
    "home": home?.toJson(),
    "official-artwork": officialArtwork?.toJson(),
    "showdown": showdown?.toJson(),
  };

  @override
  List<Object?> get props => [
    dreamWorld, home, officialArtwork, showdown, ];
}

class Sprites extends Equatable {
  const Sprites({
    required this.backDefault,
    required this.backFemale,
    required this.backShiny,
    required this.backShinyFemale,
    required this.frontDefault,
    required this.frontFemale,
    required this.frontShiny,
    required this.frontShinyFemale,
    required this.other,
    required this.versions,
    required this.animated,
  });

  final String? backDefault;
  final dynamic backFemale;
  final String? backShiny;
  final dynamic backShinyFemale;
  final String? frontDefault;
  final dynamic frontFemale;
  final String? frontShiny;
  final dynamic frontShinyFemale;
  final Other? other;
  final Versions? versions;
  final Sprites? animated;

  factory Sprites.fromJson(Map<String, dynamic> json){
    return Sprites(
      backDefault: json["back_default"],
      backFemale: json["back_female"],
      backShiny: json["back_shiny"],
      backShinyFemale: json["back_shiny_female"],
      frontDefault: json["front_default"],
      frontFemale: json["front_female"],
      frontShiny: json["front_shiny"],
      frontShinyFemale: json["front_shiny_female"],
      other: json["other"] == null ? null : Other.fromJson(json["other"]),
      versions: json["versions"] == null ? null : Versions.fromJson(json["versions"]),
      animated: json["animated"] == null ? null : Sprites.fromJson(json["animated"]),
    );
  }

  Map<String, dynamic> toJson() => {
    "back_default": backDefault,
    "back_female": backFemale,
    "back_shiny": backShiny,
    "back_shiny_female": backShinyFemale,
    "front_default": frontDefault,
    "front_female": frontFemale,
    "front_shiny": frontShiny,
    "front_shiny_female": frontShinyFemale,
    "other": other?.toJson(),
    "versions": versions?.toJson(),
    "animated": animated?.toJson(),
  };

  @override
  List<Object?> get props => [
    backDefault, backFemale, backShiny, backShinyFemale, frontDefault, frontFemale, frontShiny, frontShinyFemale, other, versions, animated, ];
}

class GenerationI extends Equatable {
  const GenerationI({
    required this.redBlue,
    required this.yellow,
  });

  final RedBlue? redBlue;
  final RedBlue? yellow;

  factory GenerationI.fromJson(Map<String, dynamic> json){
    return GenerationI(
      redBlue: json["red-blue"] == null ? null : RedBlue.fromJson(json["red-blue"]),
      yellow: json["yellow"] == null ? null : RedBlue.fromJson(json["yellow"]),
    );
  }

  Map<String, dynamic> toJson() => {
    "red-blue": redBlue?.toJson(),
    "yellow": yellow?.toJson(),
  };

  @override
  List<Object?> get props => [
    redBlue, yellow, ];
}

class RedBlue extends Equatable {
  const RedBlue({
    required this.backDefault,
    required this.backGray,
    required this.backTransparent,
    required this.frontDefault,
    required this.frontGray,
    required this.frontTransparent,
  });

  final String? backDefault;
  final String? backGray;
  final String? backTransparent;
  final String? frontDefault;
  final String? frontGray;
  final String? frontTransparent;

  factory RedBlue.fromJson(Map<String, dynamic> json){
    return RedBlue(
      backDefault: json["back_default"],
      backGray: json["back_gray"],
      backTransparent: json["back_transparent"],
      frontDefault: json["front_default"],
      frontGray: json["front_gray"],
      frontTransparent: json["front_transparent"],
    );
  }

  Map<String, dynamic> toJson() => {
    "back_default": backDefault,
    "back_gray": backGray,
    "back_transparent": backTransparent,
    "front_default": frontDefault,
    "front_gray": frontGray,
    "front_transparent": frontTransparent,
  };

  @override
  List<Object?> get props => [
    backDefault, backGray, backTransparent, frontDefault, frontGray, frontTransparent, ];
}

class GenerationIi extends Equatable {
  const GenerationIi({
    required this.crystal,
    required this.gold,
    required this.silver,
  });

  final Crystal? crystal;
  final Gold? gold;
  final Gold? silver;

  factory GenerationIi.fromJson(Map<String, dynamic> json){
    return GenerationIi(
      crystal: json["crystal"] == null ? null : Crystal.fromJson(json["crystal"]),
      gold: json["gold"] == null ? null : Gold.fromJson(json["gold"]),
      silver: json["silver"] == null ? null : Gold.fromJson(json["silver"]),
    );
  }

  Map<String, dynamic> toJson() => {
    "crystal": crystal?.toJson(),
    "gold": gold?.toJson(),
    "silver": silver?.toJson(),
  };

  @override
  List<Object?> get props => [
    crystal, gold, silver, ];
}

class Crystal extends Equatable {
  const Crystal({
    required this.backDefault,
    required this.backShiny,
    required this.backShinyTransparent,
    required this.backTransparent,
    required this.frontDefault,
    required this.frontShiny,
    required this.frontShinyTransparent,
    required this.frontTransparent,
  });

  final String? backDefault;
  final String? backShiny;
  final String? backShinyTransparent;
  final String? backTransparent;
  final String? frontDefault;
  final String? frontShiny;
  final String? frontShinyTransparent;
  final String? frontTransparent;

  factory Crystal.fromJson(Map<String, dynamic> json){
    return Crystal(
      backDefault: json["back_default"],
      backShiny: json["back_shiny"],
      backShinyTransparent: json["back_shiny_transparent"],
      backTransparent: json["back_transparent"],
      frontDefault: json["front_default"],
      frontShiny: json["front_shiny"],
      frontShinyTransparent: json["front_shiny_transparent"],
      frontTransparent: json["front_transparent"],
    );
  }

  Map<String, dynamic> toJson() => {
    "back_default": backDefault,
    "back_shiny": backShiny,
    "back_shiny_transparent": backShinyTransparent,
    "back_transparent": backTransparent,
    "front_default": frontDefault,
    "front_shiny": frontShiny,
    "front_shiny_transparent": frontShinyTransparent,
    "front_transparent": frontTransparent,
  };

  @override
  List<Object?> get props => [
    backDefault, backShiny, backShinyTransparent, backTransparent, frontDefault, frontShiny, frontShinyTransparent, frontTransparent, ];
}

class Gold extends Equatable {
  const Gold({
    required this.backDefault,
    required this.backShiny,
    required this.frontDefault,
    required this.frontShiny,
    required this.frontTransparent,
  });

  final String? backDefault;
  final String? backShiny;
  final String? frontDefault;
  final String? frontShiny;
  final String? frontTransparent;

  factory Gold.fromJson(Map<String, dynamic> json){
    return Gold(
      backDefault: json["back_default"],
      backShiny: json["back_shiny"],
      frontDefault: json["front_default"],
      frontShiny: json["front_shiny"],
      frontTransparent: json["front_transparent"],
    );
  }

  Map<String, dynamic> toJson() => {
    "back_default": backDefault,
    "back_shiny": backShiny,
    "front_default": frontDefault,
    "front_shiny": frontShiny,
    "front_transparent": frontTransparent,
  };

  @override
  List<Object?> get props => [
    backDefault, backShiny, frontDefault, frontShiny, frontTransparent, ];
}

class GenerationIii extends Equatable {
  const GenerationIii({
    required this.emerald,
    required this.fireredLeafgreen,
    required this.rubySapphire,
  });

  final OfficialArtwork? emerald;
  final Gold? fireredLeafgreen;
  final Gold? rubySapphire;

  factory GenerationIii.fromJson(Map<String, dynamic> json){
    return GenerationIii(
      emerald: json["emerald"] == null ? null : OfficialArtwork.fromJson(json["emerald"]),
      fireredLeafgreen: json["firered-leafgreen"] == null ? null : Gold.fromJson(json["firered-leafgreen"]),
      rubySapphire: json["ruby-sapphire"] == null ? null : Gold.fromJson(json["ruby-sapphire"]),
    );
  }

  Map<String, dynamic> toJson() => {
    "emerald": emerald?.toJson(),
    "firered-leafgreen": fireredLeafgreen?.toJson(),
    "ruby-sapphire": rubySapphire?.toJson(),
  };

  @override
  List<Object?> get props => [
    emerald, fireredLeafgreen, rubySapphire, ];
}

class OfficialArtwork extends Equatable {
  const OfficialArtwork({
    required this.frontDefault,
    required this.frontShiny,
  });

  final String? frontDefault;
  final String? frontShiny;

  factory OfficialArtwork.fromJson(Map<String, dynamic> json){
    return OfficialArtwork(
      frontDefault: json["front_default"],
      frontShiny: json["front_shiny"],
    );
  }

  Map<String, dynamic> toJson() => {
    "front_default": frontDefault,
    "front_shiny": frontShiny,
  };

  @override
  List<Object?> get props => [
    frontDefault, frontShiny, ];
}

class Home extends Equatable {
  const Home({
    required this.frontDefault,
    required this.frontFemale,
    required this.frontShiny,
    required this.frontShinyFemale,
  });

  final String? frontDefault;
  final dynamic frontFemale;
  final String? frontShiny;
  final dynamic frontShinyFemale;

  factory Home.fromJson(Map<String, dynamic> json){
    return Home(
      frontDefault: json["front_default"],
      frontFemale: json["front_female"],
      frontShiny: json["front_shiny"],
      frontShinyFemale: json["front_shiny_female"],
    );
  }

  Map<String, dynamic> toJson() => {
    "front_default": frontDefault,
    "front_female": frontFemale,
    "front_shiny": frontShiny,
    "front_shiny_female": frontShinyFemale,
  };

  @override
  List<Object?> get props => [
    frontDefault, frontFemale, frontShiny, frontShinyFemale, ];
}

class GenerationVii extends Equatable {
  const GenerationVii({
    required this.icons,
    required this.ultraSunUltraMoon,
  });

  final DreamWorld? icons;
  final Home? ultraSunUltraMoon;

  factory GenerationVii.fromJson(Map<String, dynamic> json){
    return GenerationVii(
      icons: json["icons"] == null ? null : DreamWorld.fromJson(json["icons"]),
      ultraSunUltraMoon: json["ultra-sun-ultra-moon"] == null ? null : Home.fromJson(json["ultra-sun-ultra-moon"]),
    );
  }

  Map<String, dynamic> toJson() => {
    "icons": icons?.toJson(),
    "ultra-sun-ultra-moon": ultraSunUltraMoon?.toJson(),
  };

  @override
  List<Object?> get props => [
    icons, ultraSunUltraMoon, ];
}

class DreamWorld extends Equatable {
  const DreamWorld({
    required this.frontDefault,
    required this.frontFemale,
  });

  final String? frontDefault;
  final dynamic frontFemale;

  factory DreamWorld.fromJson(Map<String, dynamic> json){
    return DreamWorld(
      frontDefault: json["front_default"],
      frontFemale: json["front_female"],
    );
  }

  Map<String, dynamic> toJson() => {
    "front_default": frontDefault,
    "front_female": frontFemale,
  };

  @override
  List<Object?> get props => [
    frontDefault, frontFemale, ];
}

class GenerationViii extends Equatable {
  const GenerationViii({
    required this.icons,
  });

  final DreamWorld? icons;

  factory GenerationViii.fromJson(Map<String, dynamic> json){
    return GenerationViii(
      icons: json["icons"] == null ? null : DreamWorld.fromJson(json["icons"]),
    );
  }

  Map<String, dynamic> toJson() => {
    "icons": icons?.toJson(),
  };

  @override
  List<Object?> get props => [
    icons, ];
}

class Stat extends Equatable {
  const Stat({
    required this.baseStat,
    required this.effort,
    required this.stat,
  });

  final int? baseStat;
  final int? effort;
  final Species? stat;

  factory Stat.fromJson(Map<String, dynamic> json){
    return Stat(
      baseStat: json["base_stat"],
      effort: json["effort"],
      stat: json["stat"] == null ? null : Species.fromJson(json["stat"]),
    );
  }

  Map<String, dynamic> toJson() => {
    "base_stat": baseStat,
    "effort": effort,
    "stat": stat?.toJson(),
  };

  @override
  List<Object?> get props => [
    baseStat, effort, stat, ];
}

class Type extends Equatable {
  const Type({
    required this.slot,
    required this.type,
  });

  final int? slot;
  final Species? type;

  factory Type.fromJson(Map<String, dynamic> json){
    return Type(
      slot: json["slot"],
      type: json["type"] == null ? null : Species.fromJson(json["type"]),
    );
  }

  Map<String, dynamic> toJson() => {
    "slot": slot,
    "type": type?.toJson(),
  };

  @override
  List<Object?> get props => [
    slot, type, ];
}
