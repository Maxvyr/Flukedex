import 'package:flukedex/model/pokemon_base.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PokemonTile extends StatelessWidget {
  const PokemonTile({
    required this.pokemon,
    required this.index,
    super.key,
  });

  final Pokemon pokemon;
  final int index;

  @override
  Widget build(BuildContext context) {
    var pos = "";
    if (index < 10) {
      pos = "00$index";
    } else if (index >= 10 && index < 100) {
      pos = "0$index";
    } else {
      pos = "$index";
    }

    return Material(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              toBeginningOfSentenceCase(pokemon.name) ?? "No name",
              style: Theme.of(context).textTheme.headline5,
            ),
            Image.network(
              "https://assets.pokemon.com/assets/cms2/img/pokedex/full/$pos.png",
            )
          ],
        ),
      ),
    );
  }
}
