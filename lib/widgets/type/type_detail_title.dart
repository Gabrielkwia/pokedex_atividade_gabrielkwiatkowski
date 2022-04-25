// Fazendo as importação
import 'package:flutter/material.dart';

// Widget
class TypeDetailTitle extends StatelessWidget {
  // Definição de variáveis
  final int id;
  final String name;

  // Construtor de classe
  const TypeDetailTitle({Key? key, required this.id, required this.name})
      : super(key: key);

  // Criação de widget TypeDetailTitle
  @override
  Widget build(BuildContext context) {
    // Criação de elemento CHIP (elemento com bordas arredondadas)
    return Chip(
      // Definição do backgroundColor
      backgroundColor: Colors.white,

      // Estilização do texto
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
