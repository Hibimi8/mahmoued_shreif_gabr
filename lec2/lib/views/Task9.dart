import 'package:flutter/material.dart';

class about extends StatelessWidget {
  const about({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 103,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage('assets/image/image.jpg'),
            ),
          ),
          Text(
            'Mahmoued shreif',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          Text(
            'Flutter Develoment',
            style: TextStyle(color: Colors.white70, fontSize: 14),
          ),
          Divider(color: Colors.blue, indent: 54, endIndent: 54, height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Chip(label: Text('Dart')),
              Chip(label: Text('Flutter')),
              Chip(label: Text('Firebase')),
            ],
          ),
        ],
      ),
    );
  }
}
