import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
part 'pokemon_base.g.dart';

@JsonSerializable()
class Pokemon extends Equatable {
  const Pokemon({
    required this.name,
    required this.url,
  });

  factory Pokemon.fromJson(Map<String, dynamic> json) => _$PokemonFromJson(json);
  Map<String, dynamic> toJson() => _$PokemonToJson(this);

  @JsonKey(defaultValue: "")
  final String name;
  @JsonKey(defaultValue: "")
  final String url;

  @override
  List<Object?> get props => [name, url];
}
