// Fazendo as importaçoes
import 'package:flutter/material.dart';

// Widget imutável
class DetailData extends StatelessWidget {
  // Construtor
  const DetailData({Key? key}) : super(key: key);

  // Widget DetailData
  @override
  Widget build(BuildContext context) {
    return Container(
      // Estilização do tamanho
      constraints: BoxConstraints(
        minWidth: MediaQuery.of(context).size.width,
        minHeight: 500,
      ),

      // Definições do estilos
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(
          top: BorderSide(
            width: 2,
            color: Colors.grey,
          ),
        ),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(71),
          topRight: Radius.circular(71),
        ),
      ),

      child: Column(
        children: [],
      ),
    );
  }
}
