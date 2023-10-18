import 'package:flutter/material.dart';

import 'package:pokedex_flutter/models/pokemon.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final pokemon = ModalRoute.of(context)!.settings.arguments as Pokemon;

    return Image.network(
      pokemon.image,
      fit: BoxFit.contain,
      alignment: Alignment.bottomRight,
    );
  }
}
