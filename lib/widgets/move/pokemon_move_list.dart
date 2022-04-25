// Fazendo as importação
import 'package:flutter/material.dart';
import 'package:unc_flutter_pokedex/models/MoveModel.dart';
import 'package:unc_flutter_pokedex/widgets/move/pokemon_move_item.dart';

// Widget
class MoveList extends StatefulWidget {
  // Definindo tipo lista
  final List<Move> move;

  // Construtor
  const MoveList({Key? key, required this.move}) : super(key: key);

  @override
  State<MoveList> createState() => _MoveListState();
}

// Criação de widget MoveList
class _MoveListState extends State<MoveList> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      // Estilização das linhas
      padding: const EdgeInsets.all(8),
      itemCount: widget.move.length,
      itemBuilder: (BuildContext context, int index) {
        // Retornando as linhas
        return MoveItem(
            id: widget.move[index].id, name: widget.move[index].name);
      },
      separatorBuilder: (BuildContext context, int index) => const Divider(),
    );
  }
}
