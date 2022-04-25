// Fazendo as importações
import 'package:flutter/material.dart';
import 'package:unc_flutter_pokedex/models/PokemonScreenData.dart';
import 'package:unc_flutter_pokedex/widgets/detail_back_button.dart';
import 'package:unc_flutter_pokedex/widgets/detail_data.dart';
import 'package:unc_flutter_pokedex/widgets/detail_image.dart';
import 'package:unc_flutter_pokedex/widgets/detail_title.dart';

// Widget
class Details extends StatelessWidget {
  // Construtor
  const Details({Key? key}) : super(key: key);

  // Widget
  @override
  Widget build(BuildContext context) {
    // Recebendo valores
    final arguments =
        ModalRoute.of(context)!.settings.arguments as PokemonScreenData;

    // Criação do layout
    return Scaffold(
      // Cor de fundo
      backgroundColor: Colors.black,

      // Definição do body
      body: SingleChildScrollView(
        // Definição do espaço interno
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top,
        ),

        // Definição da rolagem da pagina
        physics: const BouncingScrollPhysics(),

        // Criação de colunas(CHILDREN)
        child: Column(
          children: [
            // Widgets
            DetailImage(image: arguments.image),
            DetailTitle(
              id: arguments.id,
              name: arguments.name,
            ),
            DetailData(),
          ],
        ),
      ),

      // Botão flutuante para retornar a pagina
      floatingActionButton: const DetailBackButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
    );
  }
}
