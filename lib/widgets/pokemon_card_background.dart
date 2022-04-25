// Fazendo as importação
import 'package:flutter/material.dart';

// Widget
class PokemonCardBackground extends StatelessWidget {
  // Parametros
  final int id;

  // Construtor
  const PokemonCardBackground({Key? key, required this.id}) : super(key: key);

  // Widget do background
  @override
  Widget build(BuildContext context) {
    // Estilização do texto cor/tamanho e ID
    return Text(
      "$id",
      style: TextStyle(
        fontSize: 101,
        fontWeight: FontWeight.bold,
        color: Colors.grey[200],
      ),
    );
  }
}
