import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:topinfoads6/models/contato.dart';

const _tituloAppbar = 'Novo Contato';

class FormularioContatos extends StatefulWidget {
  @override
  State<FormularioContatos> createState() => _FormularioContatosState();
}

class _FormularioContatosState extends State<FormularioContatos> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _accountNumberController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(_tituloAppbar),
            Icon(Icons.person),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: _nameController,
                decoration: InputDecoration(labelText: 'Nome Completo:'),
                style: TextStyle(fontSize: 20.0),
                keyboardType: TextInputType.text,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: _accountNumberController,
                decoration: InputDecoration(labelText: 'Número da Conta'),
                style: TextStyle(fontSize: 20.0),
                keyboardType: TextInputType.number,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SizedBox(
                width: double.maxFinite,
                child: ElevatedButton(
                  child: Text(
                    'Adicionar',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  onPressed: () {
                    final String name = _nameController.text;
                    final int? accountNumber =
                        int.tryParse(_accountNumberController.text);
                    final Contato newContato = Contato(name, accountNumber!);
                    Navigator.pop(context, newContato);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
