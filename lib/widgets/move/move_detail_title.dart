// Fazendo as importação
import 'package:flutter/material.dart';

// Widget
class MoveDetailTitle extends StatelessWidget {
  // Definição de variáveis
  final int id;
  final String name;

  // Construtor de classe
  const MoveDetailTitle({
    Key? key,
    required this.id,
    required this.name,
  }) : super(key: key);

  // Criação de widget MoveDetailTitle
  @override
  Widget build(BuildContext context) {
    // criação de elemento CHIP (elemento com bordas arredondadas)
    return Chip(
      // definição do backgroundColor
      backgroundColor: Colors.white,

      label: Text(
        "${name[0].toUpperCase()}${name.substring(1)}",
        style: const TextStyle(
          // Estilização do texto
          fontSize: 40,
          color: Colors.black,
        ),
      ),

      // Criação do elemento para exibir o ID
      avatar: CircleAvatar(
        child: Text(
          id.toString(),
        ),
      ),
    );
  }
}
