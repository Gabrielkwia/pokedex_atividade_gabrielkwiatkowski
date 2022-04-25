// Fazendo as importaçoes
import 'package:flutter/material.dart';

// Widget
class DetailImage extends StatelessWidget {
  // Construtor de classe
  final String image;

  const DetailImage({Key? key, required this.image}) : super(key: key);

  // Criação de widget de imagem
  @override
  Widget build(BuildContext context) {
    return Container(
      // Estilização dos tamanhos
      constraints: const BoxConstraints(maxHeight: 500),
      color: Colors.black,
      child: Center(
        child: Stack(
          children: [
            // Fundo em formato circular e definição da cor
            Container(
              height: 500,
              width: 500,
              decoration: const BoxDecoration(
                color: Colors.white60,
                shape: BoxShape.circle,
              ),
            ),

            // Redimensionada de imagem
            Image.network(
              image,
              fit: BoxFit.contain,
              alignment: Alignment.topRight,
            )
          ],
        ),
      ),
    );
  }
}
