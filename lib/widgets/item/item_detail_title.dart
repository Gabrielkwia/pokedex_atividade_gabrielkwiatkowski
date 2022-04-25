// Fazendo as importação
import 'package:flutter/material.dart';

// Widget
class ItemDetailTitle extends StatelessWidget {
  // Definição de variáveis
  final int id;
  final String name;

  // Construtor de classe
  const ItemDetailTitle({Key? key, required this.id, required this.name})
      : super(key: key);

  // Widget ItemDetailTitle
  @override
  Widget build(BuildContext context) {
    // Criação de elemento CHIP (elemento com bordas arredondadas)
    return Chip(
      // definição do backgroundColor
      backgroundColor: Colors.white,

      label: Text(
        "${name[0].toUpperCase()}${name.substring(1)}",
        style: const TextStyle(
          // Estilização do exto
          fontSize: 40,
          color: Colors.black,
        ),
      ),

      // Criação do elemento para mostrar o ID
      avatar: CircleAvatar(
        child: Text(
          id.toString(),
        ),
      ),
    );
  }
}
