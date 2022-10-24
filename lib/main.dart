import 'package:flutter/material.dart';
import 'package:topinfoads6/screens/dashboard.dart';

import 'screens/contatos/formularioContatos.dart';
import 'screens/contatos/listaContatos.dart';

const _blue = 0xff0038a8;

void main() => runApp(
      Banco(),
    );

class Banco extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color(0xff000000),
          brightness: Brightness.light,
          primary: Color(_blue),
          secondary: Color(_blue),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: Dashboard(),
    );
  }
}
