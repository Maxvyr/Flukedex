// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'package:flukedex/model/pokemon_base.dart';
import 'package:json_annotation/json_annotation.dart';
part 'pokemon_list.g.dart';

@JsonSerializable()
class PokemonList extends Equatable {
  PokemonList({
    required this.count,
    required this.next,
    required this.previous,
    required this.results,
  });

  factory PokemonList.fromJson(Map<String, dynamic> json) => _$PokemonListFromJson(json);

  @JsonKey(defaultValue: -1)
  int count;
  @JsonKey(defaultValue: "")
  String? next;
  @JsonKey(defaultValue: "")
  String? previous;
  @JsonKey(defaultValue: [])
  List<Pokemon>? results;

  @override
  List<Object?> get props => [count, next, previous, results];
}
