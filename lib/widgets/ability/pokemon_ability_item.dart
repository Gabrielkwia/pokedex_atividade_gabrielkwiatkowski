// Fazendo as importações
import 'package:flutter/material.dart';
import 'package:unc_flutter_pokedex/models/AbilityScreenData.dart';

// Widget
class AbilityItem extends StatelessWidget {
  // Declaração de variáveis
  final int id;
  final String name;

  // Construtor
  const AbilityItem({
    Key? key,
    required this.id,
    required this.name,
  }) : super(key: key);

  // Criação de widget AbilityItem
  @override
  Widget build(BuildContext context) {
    return Container(

        // Definição da altura
        height: 50,
        child: GestureDetector(
          onTap: () => {
            Navigator.pushNamed(
              // Depois do click é enviado para a pagina detalhes
              context,
              "/ability/details",
              arguments: AbilityScreenData(id, name),
            )
          },

          // Estelização
          child: Text(
            '${id} - ${name[0].toUpperCase()}${name.substring(1)}',
            textAlign: TextAlign.left,
            style: const TextStyle(
              fontSize: 40,
            ),
          ),
        ));
  }
}
