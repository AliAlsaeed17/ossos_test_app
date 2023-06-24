import 'dart:convert';

import 'package:ossos_test_app/DataAccess/clients/pokemons_client.dart';
import 'package:ossos_test_app/DataAccess/models/pokemon_model.dart';

class PokemonsRepo {
  PokemonsClient client = PokemonsClient();

  Future<List<Pokemon>> getPokemons() async {
    var response = await client.getPokemons();
    List<Pokemon> pokemons = [];
    Pokemon pokemon;
    if (response != "") {
      final parsed = json.decode(response);
      for (var item in parsed['results']) {
        pokemon = await getPokemon(item);
        pokemons.add(pokemon);
      }
    }
    return pokemons;
  }

  Future<Pokemon> getPokemon(pokemonJson) async {
    var pokemonResponse = await client.getPokemon(pokemonJson['url']);
    final parsed = json.decode(pokemonResponse);
    return Pokemon.fromMap(parsed);
  }
}
