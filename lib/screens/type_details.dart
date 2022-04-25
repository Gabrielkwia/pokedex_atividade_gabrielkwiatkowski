// Fazendo importações
import 'package:flutter/material.dart';
import 'package:unc_flutter_pokedex/models/TypeScreenData.dart';
import 'package:unc_flutter_pokedex/widgets/detail_back_button.dart';
import 'package:unc_flutter_pokedex/widgets/type/type_detail_title.dart';

// Widget
class TypeDetails extends StatelessWidget {
  const TypeDetails({Key? key}) : super(key: key);

  // Widget TypeDetails
  @override
  Widget build(BuildContext context) {
    final arguments =
        ModalRoute.of(context)!.settings.arguments as TypeScreenData;
    // Definindo o layout
    return Scaffold(
      // Definição do backgroundColor
      backgroundColor: Colors.grey,
      // Definição do body
      body: SingleChildScrollView(
        // Espaço interno
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
                child: TypeDetailTitle(
                  id: arguments.id,
                  name: arguments.name,
                ),
              ),
            )
          ],
        ),
      ),
      // Botao para voltar a pagina
      floatingActionButton: const DetailBackButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
    );
  }
}
