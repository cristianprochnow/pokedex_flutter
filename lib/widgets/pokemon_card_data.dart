import 'package:flutter/material.dart';

import 'package:pokedex_flutter/models/pokemon.dart';
import 'package:pokedex_flutter/utils/string_extension.dart';

class PokemonCardData extends StatelessWidget {
  final Pokemon pokemon;

  const PokemonCardData({
    required this.pokemon,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Image.network(
              pokemon.image,
              fit: BoxFit.contain,
              alignment: Alignment.bottomRight,
            ),
          ),
        ),
        const Divider(),
        Text(
          pokemon.name.toString().capitalize(),
          style: const TextStyle(
            fontSize: 21,
            color: Colors.black87,
          ),
        ),
      ],
    );
  }
}
