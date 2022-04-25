// Fazendo as importações
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:unc_flutter_pokedex/api/pokeapi.dart';
import 'package:unc_flutter_pokedex/models/MoveModel.dart';
import 'package:unc_flutter_pokedex/widgets/move/pokemon_move_list.dart';

// Criação da classe
class HomeMove extends StatefulWidget {
  const HomeMove({Key? key}) : super(key: key);

  @override
  State<HomeMove> createState() => _HomeMoveState();
}

class _HomeMoveState extends State<HomeMove> {
  List<Move> move = List.empty();

  @override
  void initState() {
    super.initState();
    getMoveFromPokeApi();
  }

  // Recebendo dados dos pokemons
  void getMoveFromPokeApi() async {
    // Puxando função da classe PokeAPI
    PokeAPI.getMove().then((response) {
      // dTranformando o dados recebidos para o formato LIST
      List<Map<String, dynamic>> data =
          List.from(json.decode(response.body)['results']);
      setState(() {
        move = data.asMap().entries.map<Move>((element) {
          element.value['id'] = element.key + 1;

          return Move.fromJson(element.value);
        }).toList();
      });
    });
  }

  // Widget HomeMove
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Criando AppBar
      appBar: AppBar(
        title: const Text("Pokedex - Moves"),
      ),
      body: MoveList(move: move),
      // Botão flutuante para compartilhamento
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        // Definindo formato do botao
        tooltip: 'Share',
        child: const Icon(
          Icons.share_rounded,
        ),
      ),
    );
  }
}
