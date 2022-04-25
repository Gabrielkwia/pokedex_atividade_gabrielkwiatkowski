// imagem
import 'package:flutter/material.dart';

// Widget
class DetailTitle extends StatelessWidget {
  // Definição de construtor
  final int id;
  final String name;

  const DetailTitle({Key? key, required this.id, required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // criação de CHIP (elemento com borda redonda e estilos)
    return Chip(
      backgroundColor: Colors.white,

      // Texto interno do CHIP
      label: Text(
        "${name[0].toUpperCase()}${name.substring(1)}",
        style: const TextStyle(
          fontSize: 24,
          color: Colors.black,
        ),
      ),

      // Definição do elemento para mostrar o ID
      avatar: CircleAvatar(
        child: Text(
          id.toString(),
        ),
      ),
    );
  }
}
