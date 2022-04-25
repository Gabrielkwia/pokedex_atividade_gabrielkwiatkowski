// Fazendo as importações
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:unc_flutter_pokedex/api/pokeapi.dart';
import 'package:unc_flutter_pokedex/models/PokeModel.dart';
import 'package:unc_flutter_pokedex/widgets/pokemon_grid.dart';
import 'package:unc_flutter_pokedex/widgets/nav-drawer.dart';

// Criando a classe
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // Definindo lista de pokemons
  List<Pokemon> pokemon = List.empty();

  @override
  void initState() {
    super.initState();
    getPokemonFromPokeApi();
  }

  // Recebimento dos pokemons
  void getPokemonFromPokeApi() async {
    // Puxando os dados da classe PokeAPI
    PokeAPI.getPokemon().then((response) {
      // decodificando os dados recebidos para o formato List
      List<Map<String, dynamic>> data =
          List.from(json.decode(response.body)['results']);

      setState(() {
        pokemon = data.asMap().entries.map<Pokemon>((element) {
          element.value['id'] = element.key + 1;
          element.value['img'] =
              "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/${element.key + 1}.png";
          return Pokemon.fromJson(element.value);
        }).toList();
      });
    });
  }

  // Widget
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Criando o AppBar
      appBar: AppBar(
        title: const Text("Pokedex"),
      ),

      // Barra Lateral
      drawer: NavDrawer(),

      // Chamando widget de PokemonGrid
      body: PokemonGrid(pokemon: pokemon),

      // Botão flutuante para compartilhamento
      floatingActionButton: FloatingActionButton(
        onPressed: () {},

        // Definindo o formato do botão
        tooltip: 'Share',
        child: const Icon(
          Icons.share_rounded,
        ),
      ),
    );
  }
}
