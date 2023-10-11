class Pokemon {
  String id;
  String url;
  String name;

  Pokemon({
    required this.id,
    required this.url,
    required this.name
  });

  String get image {
    return
      "https://raw.githubusercontent.com/PokeAPI/sprites/"
      "master/sprites/pokemon/other/official-artwork/$id.png";
  }
}