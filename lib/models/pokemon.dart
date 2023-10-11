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

  String get image => "https://raw.githubusercontent.com/PokeAPI"
    "/sprites/master/sprites/pokemon/other/official-artwork/$id.png";

  factory Pokemon.fromJson(Map<String, dynamic> jsonData) {
    return Pokemon(url: jsonData['url'], name: jsonData['name']);
  }
}