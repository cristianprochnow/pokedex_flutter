import 'package:flutter/material.dart';

import 'package:pokedex_flutter/models/pokemon.dart';
import 'package:pokedex_flutter/utils/string_extension.dart';

class DetailTitle extends StatelessWidget {
  final Pokemon pokemon;

  const DetailTitle({
    super.key,
    required this.pokemon,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      type: MaterialType.transparency,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(24),
        ),
      ),
      child: Chip(
        backgroundColor: Colors.white,
        avatar: CircleAvatar(
          child: Text(
            pokemon.id.toString()
          ),
        ),
        label: Text(
          pokemon.name.capitalize(),
          style: const TextStyle(
            fontSize: 24,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
