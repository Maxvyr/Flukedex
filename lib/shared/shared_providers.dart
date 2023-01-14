import 'package:flukedex/services/pokedex_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final pokedexServiceProvider = Provider<PokedexService>((ref) {
  return PokedexService();
});
