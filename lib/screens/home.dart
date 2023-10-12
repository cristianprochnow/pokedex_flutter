import 'package:flutter/material.dart';

import 'package:pokedex_flutter/api/pokeapi.dart';
import 'package:pokedex_flutter/models/pokemon.dart';
import 'package:pokedex_flutter/widgets/pokemon_grid.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pokedéx'),
      ),
      body: FutureBuilder(
        future: PokeApi.getPokemonList(),
        builder: (BuildContext context, AsyncSnapshot<List<Pokemon>> snapshot) {
          Widget widget = const Center(
            child: CircularProgressIndicator(),
          );

          bool isConnectionDone =
            snapshot.connectionState == ConnectionState.done;
          List<Pokemon> content = snapshot.data ?? [];

          if (isConnectionDone) {
            widget = PokemonGrid(
              pokemonList: content,
            );
          }

          return widget;
        },
      ),
    );
  }
}

