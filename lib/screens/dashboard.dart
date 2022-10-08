import 'dart:ui';

import 'package:flutter/material.dart';

const _tituloAppbar = 'Dashboard';
const _urlImage1 = 'images/bb.png';
const _urlImage2 = 'images/logo.png';
const _tituloContainer = 'Contatos';
const _yellow = 0xfff9dd16;
const _blue = 0xff0038a8;

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(_tituloAppbar),
            Image.asset(
              _urlImage2,
              height: 40.0,
              width: 40.0,
            ),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image.network(
          //     'https://the-eshow.com/madrid19/wp-content/uploads/2017/10/logo-santander.jpg')
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(_urlImage1),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 100,
              width: 150,
              color: Color(_yellow),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.people,
                      color: Color(_blue),
                      size: 30,
                    ),
                    Text(
                      _tituloContainer,
                      style: TextStyle(
                        color: Color(_blue),
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
