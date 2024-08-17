import 'package:equatable/equatable.dart';

class PokemonEntity extends Equatable {
  final String? name;
  final String? url;

  const PokemonEntity({
    this.name,
    this.url,
  });

  @override
  List<Object?> get props {
    return [
      name,
      url,
    ];
  }

  factory PokemonEntity.fromJson(Map<String, dynamic> json) {
    return PokemonEntity(
      name: json['name'],
      url: json['url'],
    );
  }
}
