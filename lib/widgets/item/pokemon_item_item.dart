// Fazendo as importações
import 'package:flutter/material.dart';
import 'package:unc_flutter_pokedex/models/ItemScreenData.dart';

// Widget
class ItemItem extends StatelessWidget {
  // Definição de variáveis
  final int id;
  final String name;

  // Construtor de classe
  const ItemItem({
    Key? key,
    required this.id,
    required this.name,
  }) : super(key: key);

  // Criação de widget Item
  @override
  Widget build(BuildContext context) {
    return Container(

        // definindo a altura da linha
        height: 50,
        child: GestureDetector(
          // Ação quando o botão for clicado
          onTap: () => {
            Navigator.pushNamed(
              context,
              "/item/details",
              arguments: ItemScreenData(id, name),
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
