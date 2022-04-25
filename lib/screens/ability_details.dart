// Fazendo as importações
import 'package:flutter/material.dart';
import 'package:unc_flutter_pokedex/models/AbilityScreenData.dart';
import 'package:unc_flutter_pokedex/widgets/detail_back_button.dart';
import 'package:unc_flutter_pokedex/widgets/ability/ability_detail_title.dart';

// Difinindo a classe
class AbilityDetails extends StatelessWidget {
  // Construtor de classe
  const AbilityDetails({Key? key}) : super(key: key);

  // Widget
  @override
  Widget build(BuildContext context) {
    final arguments =
        ModalRoute.of(context)!.settings.arguments as AbilityScreenData;

    return Scaffold(
      // Estilização
      backgroundColor: Colors.grey,
      body: SingleChildScrollView(
        // Espaço Interno
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top,
        ),
        // Definição da rolagem de tela
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: AbilityDetailTitle(
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
