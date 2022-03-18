class PokemonAPIEvolutionsModel {
  Chain? chain;

  PokemonAPIEvolutionsModel({this.chain});

  PokemonAPIEvolutionsModel.fromJson(Map<String, dynamic> json) {
    chain = json['chain'] != null ? Chain.fromJson(json['chain']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (chain != null) {
      data['chain'] = chain!.toJson();
    }
    return data;
  }
}

class Chain {
  List<EvolvesTo>? evolvesTo;
  Species? species;

  Chain({this.evolvesTo, this.species});

  Chain.fromJson(Map<String, dynamic> json) {
    if (json['evolves_to'] != null) {
      evolvesTo = <EvolvesTo>[];
      json['evolves_to'].forEach((v) {
        evolvesTo!.add(EvolvesTo.fromJson(v));
      });
    }
    species =
        json['species'] != null ? Species.fromJson(json['species']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (evolvesTo != null) {
      data['evolves_to'] = evolvesTo!.map((v) => v.toJson()).toList();
    }
    if (species != null) {
      data['species'] = species!.toJson();
    }
    return data;
  }
}

class EvolvesTo {
  List<EvolvesTo>? evolvesTo;
  Species? species;

  EvolvesTo({this.evolvesTo, this.species});

  EvolvesTo.fromJson(Map<String, dynamic> json) {
    if (json['evolves_to'] != null) {
      evolvesTo = <EvolvesTo>[];
      json['evolves_to'].forEach((v) {
        evolvesTo!.add(EvolvesTo.fromJson(v));
      });
    }
    species =
        json['species'] != null ? Species.fromJson(json['species']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (evolvesTo != null) {
      data['evolves_to'] = evolvesTo!.map((v) => v.toJson()).toList();
    }
    if (species != null) {
      data['species'] = species!.toJson();
    }
    return data;
  }
}

class Species {
  String? name;

  Species({this.name});

  Species.fromJson(Map<String, dynamic> json) {
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    return data;
  }
}
