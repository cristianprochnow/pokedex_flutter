import 'package:flutter/material.dart';

import 'package:pokedex_flutter/models/pokemon.dart';
import 'package:pokedex_flutter/widgets/pokemon_card_background.dart';
import 'package:pokedex_flutter/widgets/pokemon_card_data.dart';

class PokemonCard extends StatelessWidget {
  final Pokemon pokemon;

  const PokemonCard({
    required this.pokemon,
    super.key
  });

  BoxDecoration getContainerDecoration() => BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(7),
    border: Border.all(
      color: Colors.grey.withOpacity(0.24),
      width: 1,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: getContainerDecoration(),
      child: Stack(
        children: [
          PokemonCardBackground(
            id: pokemon.id,
          ),
          PokemonCardData(
            pokemon: pokemon
          ),
        ],
      ),
    );
  }
}
