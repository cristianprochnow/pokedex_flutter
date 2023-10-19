import 'package:flutter/material.dart';

import 'package:pokedex_flutter/models/pokemon.dart';

class DetailData extends StatelessWidget {
  final Pokemon pokemon;

  const DetailData({
    super.key,
    required this.pokemon
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        minWidth: MediaQuery.of(context).size.width,
        minHeight: 500,
      ),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.02, 0.02],
          colors: [Colors.grey, Colors.white],
        ),
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(72),
        ),
      ),
      child: const Column(
        children: [

        ],
      ),
    );
  }
}
