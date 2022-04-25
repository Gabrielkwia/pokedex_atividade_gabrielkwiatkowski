// Fazendo as importações
import 'package:flutter/material.dart';
import 'package:unc_flutter_pokedex/models/ItemModel.dart';
import 'package:unc_flutter_pokedex/widgets/item/pokemon_item_item.dart';

// Widget
class ItemList extends StatefulWidget {
  // definindo lista
  final List<Item> item;

  // Construtor
  const ItemList({Key? key, required this.item}) : super(key: key);

  @override
  State<ItemList> createState() => _ItemListState();
}

// Criação de widget ItemList
class _ItemListState extends State<ItemList> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      // Estilização das linhas
      padding: const EdgeInsets.all(8),
      itemCount: widget.item.length,
      itemBuilder: (BuildContext context, int index) {
        return ItemItem(
            id: widget.item[index].id, name: widget.item[index].name);
      },
      separatorBuilder: (BuildContext context, int index) => const Divider(),
    );
  }
}
