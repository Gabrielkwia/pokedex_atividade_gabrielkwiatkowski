// Fazendo as importações
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:unc_flutter_pokedex/api/pokeapi.dart';
import 'package:unc_flutter_pokedex/models/AbilityModel.dart';
import 'package:unc_flutter_pokedex/widgets/ability/pokemon_ability_list.dart';

// Definindo a classe
class HomeAbility extends StatefulWidget {
  const HomeAbility({Key? key}) : super(key: key);

  @override
  State<HomeAbility> createState() => _HomeAbilityState();
}

class _HomeAbilityState extends State<HomeAbility> {
  List<Ability> ability = List.empty();

  @override
  void initState() {
    super.initState();
    getAbilityFromPokeApi();
  }

  // Puxando os dados da API
  void getAbilityFromPokeApi() async {
    // Chamando função da classe PokeAPI
    PokeAPI.getAbility().then((response) {
      // Transformando os dados definidos para o formato LIST
      List<Map<String, dynamic>> data =
          List.from(json.decode(response.body)['results']);
      setState(() {
        ability = data.asMap().entries.map<Ability>((element) {
          element.value['id'] = element.key + 1;
          return Ability.fromJson(element.value);
        }).toList();
      });
    });
  }

  // Widget
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Criação do AppBar
      appBar: AppBar(
        title: const Text("Pokedex - Abilities"),
      ),
      body: AbilityList(ability: ability),
      // Criando o botão flutuante
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        // Definindo o formato do botao
        tooltip: 'Share',
        child: const Icons(
          Icons.share_rounded,
        ),
      ),
    );
  }
}
