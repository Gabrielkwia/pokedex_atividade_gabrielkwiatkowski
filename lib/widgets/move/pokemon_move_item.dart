// Fazendo as importação
import 'package:flutter/material.dart';
import 'package:unc_flutter_pokedex/models/MoveScreenData.dart';

// Widget
class MoveItem extends StatelessWidget {
  // Definição de variáveis
  final int id;
  final String name;

  // Construtor de classe
  const MoveItem({
    Key? key,
    required this.id,
    required this.name,
  }) : super(key: key);

  // Criação de widget MoveItem
  @override
  Widget build(BuildContext context) {
    return Container(

        // Definição da altura da linha
        height: 50,
        child: GestureDetector(
          // dAção quando clicado
          onTap: () => {
            Navigator.pushNamed(
              context,
              "/move/details",
              arguments: MoveScreenData(id, name),
            )
          },

          // Estilização do texto
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
