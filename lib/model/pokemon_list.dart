// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'package:flukedex/model/pokemon_base.dart';

class PokemonList extends Equatable {
  PokemonList({
    required this.count,
    required this.next,
    required this.previous,
    required this.results,
  });

  // factory PokemonList.fromJson(Map<String, dynamic> json) {
  //   return PokemonList(
  //     count: json["count"],
  //     next: json["next"],
  //     previous: json["previous"],
  //     results: json["results"],
  //   );
  // }

  PokemonList.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    next = json['next'];
    previous = json['previous'];
    if (json['results'] != null) {
      results = [];
      json['results'].forEach((v) {
        results!.add(Pokemon.fromJson(v));
      });
    }
  }

  int? count;
  String? next;
  String? previous;
  List<Pokemon>? results;

  @override
  List<Object?> get props => [count, next, previous, results];
}
