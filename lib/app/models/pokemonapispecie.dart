class PokemonAPISpecieModel {
  EvolutionChain? evolutionChain;

  PokemonAPISpecieModel({this.evolutionChain});

  PokemonAPISpecieModel.fromJson(Map<String, dynamic> json) {
    evolutionChain = json['evolution_chain'] != null
        ? EvolutionChain.fromJson(json['evolution_chain'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (evolutionChain != null) {
      data['evolution_chain'] = evolutionChain!.toJson();
    }
    return data;
  }
}

class EvolutionChain {
  String? url;

  EvolutionChain({this.url});

  EvolutionChain.fromJson(Map<String, dynamic> json) {
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['url'] = url;
    return data;
  }
}
