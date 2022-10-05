import 'package:flutter/material.dart';
import 'package:topinfoads6/screens/dashboard.dart';

void main() => runApp(
      Banco(),
    );

class Banco extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Dashboard(),
    );
  }
}
