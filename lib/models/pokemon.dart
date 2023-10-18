import 'package:pokedex_flutter/utils/constants.dart';

class Pokemon {
  String url;
  String name;

  Pokemon({
    required this.url,
    required this.name
  });

  int get id => int.parse(
    url
      .split('/')
      .reversed
      .where((element) => element != "")
      .first
  );

  String get image => "$pokemonImageUrl/$id.png";

  factory Pokemon.fromJson(Map<String, dynamic> jsonData) {
    return Pokemon(url: jsonData['url'], name: jsonData['name']);
  }
}