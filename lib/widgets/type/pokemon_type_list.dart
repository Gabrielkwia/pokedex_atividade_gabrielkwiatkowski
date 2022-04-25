// Fazendo as importação
import 'package:flutter/material.dart';
import 'package:unc_flutter_pokedex/models/TypeModel.dart';
import 'package:unc_flutter_pokedex/widgets/type/pokemon_type_item.dart';

// Widget
class TypeList extends StatefulWidget {
  // Definindo lista
  final List<Type> type;

  // Construtor com lista
  const TypeList({Key? key, required this.type}) : super(key: key);

  @override
  State<TypeList> createState() => _TypeListState();
}

// Criação de widget TypeList
class _TypeListState extends State<TypeList> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      // Estilização das linhas
      padding: const EdgeInsets.all(8),
      itemCount: widget.type.length,
      itemBuilder: (BuildContext context, int index) {
        // retorna de dados
        return TypeItem(
            id: widget.type[index].id, name: widget.type[index].name);
      },
      separatorBuilder: (BuildContext context, int index) => const Divider(),
    );
  }
}
