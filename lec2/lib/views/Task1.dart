import 'package:flutter/material.dart';

//Task 1
class profile extends StatelessWidget {
  const profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('profile')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 100,
            backgroundImage: AssetImage('assets/image/image.jpg'),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.home),

              title: Text('mahmoued shreif'),
              subtitle: Text('Flutter Develober'),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.email),
              title: Text('mahmoued.shreif@gmail.com'),
            ),
          ),
        ],
      ),
    );
  }
}
