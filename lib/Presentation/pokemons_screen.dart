import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ossos_test_app/Bussiness/controllers/pokemons_controller.dart';
import 'package:ossos_test_app/Presentation/widgets/pokemons/pokemon_box.dart';
import 'package:ossos_test_app/Presentation/widgets/public/custom_appbar.dart';
import 'package:ossos_test_app/Presentation/widgets/public/spacer_height.dart';

class PokemonsScreen extends StatelessWidget {
  PokemonsScreen({super.key});

  final pokemonsController = Get.put(PokemonsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(screenTitle: 'Pokemons'),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(30),
          child: Column(
            children: [
              Expanded(
                child: Obx(() {
                  return pokemonsController.isLoadingPokemons.value
                      ? Center(child: CircularProgressIndicator())
                      : ListView.separated(
                          itemBuilder: (context, index) => PokemonBox(
                            pokemon: pokemonsController.pokemons[index],
                          ),
                          separatorBuilder: (context, index) => spacerHeight(),
                          itemCount: pokemonsController.pokemons.length,
                        );
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
