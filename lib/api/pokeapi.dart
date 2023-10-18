import 'package:pokedex_flutter/models/pokemon.dart';
import 'package:pokedex_flutter/services/api.dart';
import 'package:pokedex_flutter/utils/constants.dart';

class PokeApi {
  static Pokemon getPokemon(Map<String, dynamic> pokemonData) {
    return Pokemon.fromJson(pokemonData);
  }

  static Future<List<Pokemon>> getPokemonList({
    int? limit, int? offset
  }) async {
    limit ??= 150;
    offset ??= 0;

    final String url = "$pokeApiUrl?limit=$limit&offset=$offset&limit=$limit";
    final Map<String, dynamic> jsonData = await Api.getData(url);

    final List<Pokemon> pokemonList = [];

    for (Map<String, dynamic> item in jsonData['results']) {
      final Pokemon pokemon = getPokemon(item);
      pokemonList.add(pokemon);
    }

    return pokemonList;
  }
}