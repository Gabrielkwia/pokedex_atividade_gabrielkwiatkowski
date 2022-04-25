//Fazendo as Importações
import 'package:flutter/material.dart';

class NavDrawer extends StatelessWidget {
  // Widget
  @override
  Widget build(BuildContext context) {
    // Criação da barra lateral
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          // Menu
          const DrawerHeader(
            child: Text(
              'Menu',
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 224, 87, 53),
            ),
          ),

          // Rotas
          ListTile(
            title: const Text(
              'Pokemons',
              style: TextStyle(color: Colors.black87, fontSize: 25),
            ),
            onTap: () => {
              Navigator.pushNamed(
                context,
                "/",
              )
            },
          ),
          const Divider(),
          ListTile(
            title: const Text(
              'Types',
              style: TextStyle(color: Colors.black87, fontSize: 25),
            ),
            onTap: () => {
              Navigator.pushNamed(
                context,
                "/type",
              )
            },
          ),
          const Divider(),
          ListTile(
            title: const Text(
              'Abilities',
              style: TextStyle(color: Colors.black87, fontSize: 25),
            ),
            onTap: () => {
              Navigator.pushNamed(
                context,
                "/ability",
              )
            },
          ),
          const Divider(),
          ListTile(
            title: const Text(
              'Moves',
              style: TextStyle(color: Colors.black87, fontSize: 25),
            ),
            onTap: () => {
              Navigator.pushNamed(
                context,
                "/move",
              )
            },
          ),
          const Divider(),
          ListTile(
            title: const Text(
              'Items',
              style: TextStyle(color: Colors.black87, fontSize: 25),
            ),
            onTap: () => {
              Navigator.pushNamed(
                context,
                "/item",
              )
            },
          ),
        ],
      ),
    );
  }
}
