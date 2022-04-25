// Fazendo as importações
import 'package:flutter/material.dart';

// Widget
class AbilityDetailTitle extends StatelessWidget {
  // definição de variáveis
  final int id;
  final String name;

  const AbilityDetailTitle({Key? key, required this.id, required this.name})
      : super(key: key);

  // criação de widget TypeDetailTitle
  @override
  Widget build(BuildContext context) {
    // Criação de elemento CHIP (elemento com bordas arredondadas)
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

      // Elemento para exibir o ID
      avatar: CircleAvatar(
        child: Text(
          id.toString(),
        ),
      ),
    );
  }
}
