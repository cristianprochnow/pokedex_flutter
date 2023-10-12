import 'package:flutter/material.dart';

import 'package:pokedex_flutter/models/pokemon.dart';
import 'package:pokedex_flutter/models/screen_size_scale.dart';

class PokemonGrid extends StatefulWidget {
  const PokemonGrid({super.key, required this.pokemonList});

  final List<Pokemon> pokemonList;

  @override
  State<PokemonGrid> createState() => _PokemonGridState();
}

class _PokemonGridState extends State<PokemonGrid> {
  List<ScreenSizeScale> _getSizesScales() {
    return [
      ScreenSizeScale(
        screenWidth: 1000,
        scale: 5,
      ),
      ScreenSizeScale(
        screenWidth: 700,
        scale: 4,
      ),
      ScreenSizeScale(
        screenWidth: 450,
        scale: 3,
      ),
      ScreenSizeScale(
        screenWidth: 0,
        scale: 2,
      ),
    ];
  }

  int _getCrossAxisCount(double width) {
    if (width > 1000) {
      return 5;
    }

    if (width > 700) {
      return 4;
    }

    if (width > 450) {
      return 3;
    }

    return 2;
  }

  @override
  Widget build(BuildContext context) {
    List<Pokemon> pokemonList = widget.pokemonList;
    double screenWidth = MediaQuery.of(context).size.width;

    return GridView.count(
      padding: const EdgeInsets.all(16),
      crossAxisCount: _getCrossAxisCount(screenWidth),
      crossAxisSpacing: 4,
      semanticChildCount: pokemonList.length,
      childAspectRatio: 200 / 244,
      physics: const BouncingScrollPhysics(),
      children: pokemonList.map(
        (pokemon) => PokemonCard(
          pokemon: pokemon,
        ),
      ).toList(),
    );
  }
}
