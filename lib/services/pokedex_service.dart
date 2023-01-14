import 'dart:convert';

import 'package:flukedex/model/pokemon_list.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class PokedexService {
  final _baseUrl = "https://pokeapi.co/api/v2/";

  Future<PokemonList> getList() async {
    final uri = Uri.parse("${_baseUrl}pokemon?limit=151");
    final res = await http.get(uri);
    return compute(
      PokemonList.fromJson,
      jsonDecode(res.body) as Map<String, dynamic>,
    );
  }
}
