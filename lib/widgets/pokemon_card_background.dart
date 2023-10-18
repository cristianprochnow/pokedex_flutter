import 'package:flutter/material.dart';

class PokemonCardBackground extends StatelessWidget {
  final int id;

  const PokemonCardBackground({
    required this.id,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    double fontSize = id > 99 ? 90.0 : 101.0;

    return Text(
      id.toString(),
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: FontWeight.bold,
        color: Colors.grey.shade200,
      ),
    );
  }
}
