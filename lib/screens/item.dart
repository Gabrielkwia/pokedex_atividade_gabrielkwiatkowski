// Fazendo as importações
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:unc_flutter_pokedex/api/pokeapi.dart';
import 'package:unc_flutter_pokedex/models/ItemModel.dart';
import 'package:unc_flutter_pokedex/widgets/item/pokemon_item_list.dart';

// Criação da classe
class HomeItem extends StatefulWidget {
  const HomeItem({Key? key}) : super(key: key);

  @override
  State<HomeItem> createState() => _HomeItemState();
}

class _HomeItemState extends State<HomeItem> {
  List<Item> item = List.empty();

  @override
  void initState() {
    super.initState();
    getItemFromPokeApi();
  }

  // Recebendo dados dos pokemons
  void getItemFromPokeApi() async {
    // Puxando função da classe PokeAPI
    PokeAPI.getItem().then((response) {
      // Tranformando os dados recebidos para o formato LIST
      List<Map<String, dynamic>> data =
          List.from(json.decode(response.body)['results']);
      setState(() {
        item = data.asMap().entries.map<Item>((element) {
          element.value['id'] = element.key + 1;
          return Item.fromJson(element.value);
        }).toList();
      });
    });
  }

  // Criação do widget HomeItem
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Criação de AppBar
      appBar: AppBar(
        title: const Text("Pokedex - Items"),
      ),
      body: ItemList(item: item),
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
