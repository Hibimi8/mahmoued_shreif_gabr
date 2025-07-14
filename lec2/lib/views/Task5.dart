import 'package:flutter/material.dart';

class loginScreen extends StatelessWidget {
  const loginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login Screen')),
      body: Card(
        elevation: 6,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Container(
          width: 300,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage('assets/image/image.jpg'),
              ),
              SizedBox(width: 10),
              Text(
                'mahmoued shreif',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(width: 10),
              Row(
                children: [
                  Icon(Icons.flag),
                  Text('Egypt', style: TextStyle(fontSize: 18)),
                  SizedBox(width: 10),
                  Text(
                    'EG',
                    style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.star, color: Colors.amber, size: 20),
                  Text('4.5', style: TextStyle(fontSize: 16)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
