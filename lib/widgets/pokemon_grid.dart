import 'package:flutter/material.dart';

import 'package:pokedex_flutter/models/pokemon.dart';

class PokemonGrid extends StatefulWidget {
  const PokemonGrid({super.key, required this.pokemonList});

  final List<Pokemon> pokemonList;

  @override
  State<PokemonGrid> createState() => _PokemonGridState();
}

class _PokemonGridState extends State<PokemonGrid> {
  @override
  Widget build(BuildContext context) {
    List<Pokemon> pokemonList = widget.pokemonList;

    return const Placeholder();
  }
}
