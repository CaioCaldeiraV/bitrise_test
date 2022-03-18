import 'package:bitrise_test/app/models/allpokemonapi.model.dart';
import 'package:bitrise_test/app/models/pokemonapi.model.dart';
import 'package:bitrise_test/app/models/pokemonapievolutions.model.dart';
import 'package:bitrise_test/app/models/pokemonapispecie.dart';
import 'package:dio/dio.dart';

class PokemonRepository {
  Dio? _dio;

  PokemonRepository() {
    BaseOptions options = BaseOptions(
      baseUrl: "",
      connectTimeout: 5000,
    );
    _dio = Dio(options);
  }

  Future<AllPokemonAPIModel> getPokemons(String? link) async {
    try {
      Response response;
      if (link == null) {
        response = await _dio!
            .get("https://pokeapi.co/api/v2/pokemon?offset=0&limit=10");
      } else {
        response = await _dio!.get(link);
      }
      return AllPokemonAPIModel.fromJson(response.data);
    } on DioError catch (e) {
      throw (e.message);
    }
  }

  Future<PokemonAPIModel> getPokemon(String name) async {
    try {
      Response response =
          await _dio!.get("https://pokeapi.co/api/v2/pokemon/" + name);
      return PokemonAPIModel.fromJson(response.data);
    } on DioError catch (e) {
      throw (e.message);
    }
  }

  Future<PokemonAPISpecieModel> getPokemonSpecie(String url) async {
    try {
      Response response = await _dio!.get(url);
      return PokemonAPISpecieModel.fromJson(response.data);
    } on DioError catch (e) {
      throw (e.message);
    }
  }

  Future<PokemonAPIEvolutionsModel> getPokemonEvolutions(String url) async {
    try {
      Response response = await _dio!.get(url);
      return PokemonAPIEvolutionsModel.fromJson(response.data);
    } on DioError catch (e) {
      throw (e.message);
    }
  }

  Future<AllPokemonAPIModel> getAllPokemons() async {
    try {
      Response response;
      response = await _dio!
          .get("https://pokeapi.co/api/v2/pokemon?offset=0&limit=1118");
      return AllPokemonAPIModel.fromJson(response.data);
    } on DioError catch (e) {
      throw (e.message);
    }
  }
}
