// Fazendo as importações
import 'package:flutter/material.dart';
import 'package:unc_flutter_pokedex/models/AbilityModel.dart';
import 'package:unc_flutter_pokedex/widgets/ability/pokemon_ability_item.dart';

// Widget
class AbilityList extends StatefulWidget {
  // definição da lista
  final List<Ability> ability;

  // Construtor
  const AbilityList({Key? key, required this.ability}) : super(key: key);

  @override
  State<AbilityList> createState() => _AbilityListState();
}

// Widget AbilityList
class _AbilityListState extends State<AbilityList> {
  @override
  Widget build(BuildContext context) {
    // definição da lista com itens separados
    return ListView.separated(
      // Estilização
      padding: const EdgeInsets.all(8),
      itemCount: widget.ability.length,
      itemBuilder: (BuildContext context, int index) {
        return AbilityItem(
            id: widget.ability[index].id, name: widget.ability[index].name);
      },
      separatorBuilder: (BuildContext context, int index) => const Divider(),
    );
  }
}
