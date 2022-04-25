// Fazendo as importação
import 'package:flutter/material.dart';
import 'package:unc_flutter_pokedex/models/TypeScreenData.dart';

// Widget
class TypeItem extends StatelessWidget {
  // variáveis
  final int id;
  final String name;

  // Construtor de classe
  const TypeItem({
    Key? key,
    required this.id,
    required this.name,
  }) : super(key: key);

  // Criação de widget TypeItem
  @override
  Widget build(BuildContext context) {
    return Container(

        // Altura da linha
        height: 50,
        child: GestureDetector(
          // Definindo ação quando clicado
          onTap: () => {
            Navigator.pushNamed(
              context,
              "/type/details",
              arguments: TypeScreenData(id, name),
            )
          },

          // Estilização da linha
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
