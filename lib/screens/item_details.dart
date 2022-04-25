// Fazendo importações
import 'package:flutter/material.dart';
import 'package:unc_flutter_pokedex/models/ItemScreenData.dart';
import 'package:unc_flutter_pokedex/widgets/detail_back_button.dart';
import 'package:unc_flutter_pokedex/widgets/item/item_detail_title.dart';

// Widget
class ItemDetails extends StatelessWidget {
  // Classe
  const ItemDetails({Key? key}) : super(key: key);

  // Widget ItemDetails
  @override
  Widget build(BuildContext context) {
    final arguments =
        ModalRoute.of(context)!.settings.arguments as ItemScreenData;
    // Definição de layout
    return Scaffold(
      // Definição do backgroundColor
      backgroundColor: Colors.grey,
      // Definição do body
      body: SingleChildScrollView(
        // Definição de espaçamento interno
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top,
        ),
        // Definição da rolagem
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: EdgeInsets.all(15.0),
                // Construção de widget
                child: ItemDetailTitle(
                  id: arguments.id,
                  name: arguments.name,
                ),
              ),
            )
          ],
        ),
      ),
      // Botão flutuante para retornar a pagina
      floatingActionButton: const DetailBackButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
    );
  }
}
