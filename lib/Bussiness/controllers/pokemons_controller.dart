import 'package:get/get.dart';
import 'package:ossos_test_app/DataAccess/models/pokemon_model.dart';
import 'package:ossos_test_app/DataAccess/repositories/pokemons_repo.dart';

class PokemonsController extends GetxController {
  List<Pokemon> pokemons = [];
  PokemonsRepo pokemonsRepo = PokemonsRepo();
  var isLoadingPokemons = false.obs;

  Future<void> getPokemons() async {
    isLoadingPokemons.value = true;
    pokemons = await pokemonsRepo.getPokemons();
    isLoadingPokemons.value = false;
  }

  @override
  void onInit() {
    getPokemons();
    super.onInit();
  }
}
