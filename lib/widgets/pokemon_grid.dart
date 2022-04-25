// Fazendo as importações
import 'package:flutter/material.dart';
import 'package:unc_flutter_pokedex/models/PokeModel.dart';
import 'package:unc_flutter_pokedex/widgets/pokemon_card.dart';

// Widget stateful
class PokemonGrid extends StatefulWidget {
  // Lista que irá receber o pokemon
  final List<Pokemon> pokemon;

  // Construção de classe
  const PokemonGrid({Key? key, required this.pokemon}) : super(key: key);

  @override
  State<PokemonGrid> createState() => _PokemonGridState();
}

class _PokemonGridState extends State<PokemonGrid> {
  @override
  Widget build(BuildContext context) {
    // obtendo a largura da tela do dispositivo
    final width = MediaQuery.of(context).size.width;
    //Calculando o numero de colunas de acordo com o tamanho da tela

    final crossAxisCount = (width > 1000)
        ? 5
        : (width > 700)
            ? 4
            : (width > 450)
                ? 3
                : 2;

    // Criando uma grid view
    return GridView.count(
      // Estilização
      padding: const EdgeInsets.all(7),
      crossAxisCount: crossAxisCount,
      crossAxisSpacing: 4,
      mainAxisSpacing: 4,
      semanticChildCount: 250,
      childAspectRatio: 200 / 244,
      physics: const BouncingScrollPhysics(),
      children: widget.pokemon
          .map(
            (pokemon) => PokemonCard(
              id: pokemon.id,
              name: pokemon.name,
              image: pokemon.img,
            ),
          )
          .toList(),
    );
  }
}
