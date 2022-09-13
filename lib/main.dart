import 'package:flutter/material.dart';
import 'screens/transferencia/lista_transferencia.dart';

void main() => runApp(
      Banco(),
    );

class Banco extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ListaTransferencia(),
    );
  }
}
