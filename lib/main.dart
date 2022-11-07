import 'package:flutter/material.dart';
import 'package:topinfoads6/database/app_database.dart';
import 'package:topinfoads6/screens/dashboard.dart';

import 'models/contato.dart';

const _blue = 0xff0038a8;

void main() {
  runApp(
    Banco(),
  );
  save(Contato(0, 'Alexandre', 3265)).then(
    (id) {
      findAll().then(
        (contatos) => debugPrint(
          contatos.toString(),
        ),
      );
    },
  );
}

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
