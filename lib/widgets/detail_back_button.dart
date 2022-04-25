// Fazendo as importaçoes
import 'package:flutter/material.dart';

// widget não mutável
class DetailBackButton extends StatelessWidget {
  // Construtor
  const DetailBackButton({Key? key}) : super(key: key);

  // Widget
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      // Botao para o retorno
      onPressed: () => Navigator.pop(context),
      tooltip: "Voltar",
      label: const Text("Voltar"),
      icon: const Icon(Icons.arrow_back_ios_new_rounded),
    );
  }
}
