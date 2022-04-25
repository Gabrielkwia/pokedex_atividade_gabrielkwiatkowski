// Fazendo as importações
import 'package:flutter/material.dart';

// Widget
class PokemonCardData extends StatelessWidget {
  // Wefinição de variaveis
  final String name;
  final String image;

  // Construtor
  const PokemonCardData({
    Key? key,
    required this.name,
    required this.image,
  }) : super(key: key);

  // Criação de widget cardData
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Estilização e imagem do card
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(11),
            child: Image.network(
              image,
              fit: BoxFit.contain,
              alignment: Alignment.bottomRight,
            ),
          ),
        ),

        const Divider(),

        // Criação do testo (nome do pokemon)
        Text(
          "${name[0].toUpperCase()}${name.substring(1)}",
          style: const TextStyle(
            fontSize: 21,
            color: Colors.black87,
          ),
        )
      ],
    );
  }
}
