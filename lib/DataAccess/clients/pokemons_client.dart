import 'package:http/http.dart' as http;
import 'package:ossos_test_app/Constants/api_links.dart';

class PokemonsClient {
  Future<dynamic> getPokemons() async {
    var response = await http.get(Uri.parse("$baseUrl$pokemonsLink"));
    if (response.statusCode == 200) {
      return response.body;
    } else {
      return "";
    }
  }

  Future<dynamic> getPokemon(pokemonUrl) async {
    var response = await http.get(Uri.parse(pokemonUrl));
    if (response.statusCode == 200) {
      return response.body;
    } else {
      return "";
    }
  }
}
