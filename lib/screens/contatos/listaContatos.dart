import 'package:flutter/material.dart';

const _tituloAppbar = 'Contatos';

class ListaContatos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(_tituloAppbar),
            Icon(Icons.list_alt_sharp),
          ],
        ),
      ),
      body: ListView(
        children: [
          Card(
            child: ListTile(
              title: Text('Alexandre'),
              subtitle: Text('4689-8'),
            ),
          ),
        ],
      ),
    );
  }
}
