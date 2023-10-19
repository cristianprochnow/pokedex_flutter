class PokemonData {
  final int id;
  final double height; // em dm
  final double weight; // em hg

  PokemonData({
    required this.id,
    required this.height,
    required this.weight,
  });

  get heightInMeters => height / 10;
  get weightInKilograms => weight / 10;

  factory PokemonData.fromJson(Map<String, dynamic> jsonData) {
    return PokemonData(
      id: jsonData['id'],
      height: jsonData['height'],
      weight: jsonData['weight'],
    );
  }
}