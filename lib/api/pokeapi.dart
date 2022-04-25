// Fazendo as importações
import 'dart:async';
import 'package:http/http.dart' as http;

// Importação da classe da PokeAPI
class PokeAPI {
  //Obtendo dados dos Pokemons
  static Future<http.Response> getPokemon() =>
      http.get(Uri.parse("https://pokeapi.co/api/v2/pokemon?limit=1200"));

  //Obtendo dados dos tipos dos Pokemons
  static Future<http.Response> getType() =>
      http.get(Uri.parse("https://pokeapi.co/api/v2/type"));

  //Obtendo dados das habilidades dos Pokemons
  static Future<http.Response> getAbility() =>
      http.get(Uri.parse("https://pokeapi.co/api/v2/ability?limit=400"));

  //Obtendo dados dos movimentos dos Pokemons
  static Future<http.Response> getMove() =>
      http.get(Uri.parse("https://pokeapi.co/api/v2/move?limit=900"));

  static Future<http.Response> getItem() =>
      http.get(Uri.parse("https://pokeapi.co/api/v2/item?limit=1700"));
}
