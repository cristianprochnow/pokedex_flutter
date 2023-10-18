import 'package:flutter/material.dart';

import 'package:pokedex_flutter/models/pokemon.dart';

class DetailImage extends StatelessWidget {
  final Pokemon pokemon;

  const DetailImage({
    super.key,
    required this.pokemon
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
        maxHeight: 500,
      ),
      color: Colors.black,
      child: Center(
        child: Stack(
          children: [
            Container(
              height: 500,
              width: 500,
              decoration: const BoxDecoration(
                color: Colors.white10,
                shape: BoxShape.circle,
              ),
            ),
            Image.network(
              pokemon.image,
              fit: BoxFit.contain,
              alignment: Alignment.center,
            ),
          ],
        ),
      ),
    );
  }
}
