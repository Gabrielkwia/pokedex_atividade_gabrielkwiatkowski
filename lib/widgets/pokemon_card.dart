// Fazendo as importações
import 'package:flutter/material.dart';
import 'package:unc_flutter_pokedex/models/PokemonScreenData.dart';
import 'package:unc_flutter_pokedex/widgets/pokemon_card_background.dart';
import 'package:unc_flutter_pokedex/widgets/pokemon_card_data.dart';

// Widget stateless
class PokemonCard extends StatelessWidget {
  // Definição das variáveis
  final int id;
  final String name;
  final String image;

  // Construtor de classe
  const PokemonCard({
    Key? key,
    required this.id,
    required this.name,
    required this.image,
  }) : super(key: key);

  // Definindo border radius
  BoxDecoration getContainerDecoration() => BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: Colors.grey.withOpacity(0.24), width: 1),
      );

  // Criação do widget do card
  @override
  Widget build(BuildContext context) {
    return Material(
      // Estilização
      color: Colors.white,
      borderRadius: BorderRadius.circular(24),
      child: InkWell(
        // Definindo estilo e evento ao clicar
        borderRadius: BorderRadius.circular(24),
        enableFeedback: true,
        splashColor: Colors.red[50],
        onTap: () => {
          // Direcinamento para a pagina de detralhes do pokemon
          Navigator.pushNamed(
            context,
            "/details",
            arguments: PokemonScreenData(id, name, image),
          )
        },

        // Puxando widget de background e cardData
        child: Container(
          padding: const EdgeInsets.all(7),
          decoration: getContainerDecoration(),
          child: Stack(
            children: [
              PokemonCardBackground(id: id),
              PokemonCardData(name: name, image: image),
            ],
          ),
        ),
      ),
    );
  }
}
