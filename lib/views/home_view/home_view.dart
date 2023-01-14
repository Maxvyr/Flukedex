import 'package:flukedex/views/error_view.dart';
import 'package:flukedex/views/home_view/home_view.provider.dart';
import 'package:flukedex/views/loading_view.dart';
import 'package:flukedex/views/widget/pokemon_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeView extends ConsumerStatefulWidget {
  const HomeView({Key? key}) : super(key: key);
  @override
  HomeViewState createState() => HomeViewState();
}

class HomeViewState extends ConsumerState<HomeView> {
  @override
  Widget build(BuildContext context) {
    final pokemonList = ref.watch(pokemonListProvider);
    return pokemonList.when(
      data: (pokemonList) {
        return ListView.builder(
          itemCount: pokemonList.results!.length,
          itemExtent: 100,
          itemBuilder: (context, index) {
            final pokemon = pokemonList.results![index];
            return PokemonTile(
              pokemon: pokemon,
              index: index + 1,
            );
          },
        );
      },
      error: (error, stackTrace) =>
          ErrorView(error: error, stackTrace: stackTrace),
      loading: () => const LoadingView(),
    );
  }
}
