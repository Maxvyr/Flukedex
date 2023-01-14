import 'package:flukedex/model/pokemon_list.dart';
import 'package:flukedex/shared/shared_providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final pokemonListProvider = FutureProvider<PokemonList>((ref) async {
  final pokedexService = ref.watch(pokedexServiceProvider);
  return await pokedexService.getList();
});
