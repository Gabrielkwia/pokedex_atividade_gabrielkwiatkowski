// Fazendo importações
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:unc_flutter_pokedex/api/pokeapi.dart';
import 'package:unc_flutter_pokedex/models/TypeModel.dart';
import 'package:unc_flutter_pokedex/widgets/type/pokemon_type_list.dart';

// Criação da classe
class HomeType extends StatefulWidget {
  const HomeType({Key? key}) : super(key: key);

  @override
  State<HomeType> createState() => _HomeTypeState();
}

class _HomeTypeState extends State<HomeType> {
  List<Type> type = List.empty();

  @override
  void initState() {
    super.initState();
    getTypeFromPokeApi();
  }

  // Recebendo dados dos pokemons
  void getTypeFromPokeApi() async {
    // Chamando a classe PokeAPI
    PokeAPI.getType().then((response) {
      // Transformando os dados recebidos para o formato LIST
      List<Map<String, dynamic>> data =
          List.from(json.decode(response.body)['results']);
      setState(() {
        type = data.asMap().entries.map<Type>((element) {
          element.value['id'] = element.key + 1;
          return Type.fromJson(element.value);
        }).toList();
      });
    });
  }

  // Criação do widget
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Criação do AppBar
      appBar: AppBar(
        title: const Text("Pokedex - Types"),
      ),
      body: TypeList(type: type),
      // Botão flutuante para compartilhamento
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        // Definindo formato do botão
        tooltip: 'Share',
        child: const Icon(
          Icons.share_rounded,
        ),
      ),
    );
  }
}
