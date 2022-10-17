import 'package:flutter/material.dart';

const _tituloAppbar = 'Formulário Contatos';

class FormularioContatos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text(_tituloAppbar),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(labelText: 'Nome completo:'),
                style: TextStyle(fontSize: 16.0),
              ),
            ],
          ),
        ));
  }
}
