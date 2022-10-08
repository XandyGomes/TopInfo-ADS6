import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      body: Column(
        children: [
          // Image.network(
          //     'https://the-eshow.com/madrid19/wp-content/uploads/2017/10/logo-santander.jpg')
          Image.asset('images/bb.png'),
          Container(
            color: Color(0xffe8b818),
            child: Column(
              children: [
                Icon(Icons.people),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
