import 'package:flutter/material.dart';
import 'package:ossos_test_app/Constants/ui_colors.dart';
import 'package:ossos_test_app/Constants/ui_styles.dart';
import 'package:ossos_test_app/Constants/ui_text_style.dart';
import 'package:ossos_test_app/DataAccess/models/pokemon_model.dart';

class PokemonBox extends StatelessWidget {
  const PokemonBox({super.key, required this.pokemon});

  final Pokemon pokemon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 138,
      decoration: const BoxDecoration(
        borderRadius: raduis14,
        color: UIColors.white,
        boxShadow: [
          BoxShadow(
            color: UIColors.containerShadow,
            blurRadius: 4,
            spreadRadius: 3,
            offset: Offset(0.0, 6.0),
          )
        ],
      ),
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: raduis14,
              ),
              child: Image.network(
                pokemon.imageUrl,
                loadingBuilder: (BuildContext context, Widget child,
                    ImageChunkEvent? loadingProgress) {
                  if (loadingProgress == null) return child;
                  return placeholderImageContainer();
                },
                errorBuilder: (context, error, stackTrace) =>
                    placeholderImageContainer(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                pokemon.name,
                style: UITextStyles.normalTextStyle,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget placeholderImageContainer() {
  return Container(
    decoration: BoxDecoration(
      color: UIColors.containrBackground,
      borderRadius: raduis14,
    ),
    child: Center(
      child: Icon(
        Icons.image_outlined,
        size: 40,
      ),
    ),
  );
}
