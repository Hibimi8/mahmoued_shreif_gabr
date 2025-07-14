import 'package:flutter/material.dart';

class recipe extends StatelessWidget {
  const recipe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Recipe Card with Image')),
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
                backgroundImage: NetworkImage(
                  'https://images.unsplash.com/photo-1600891964599-f61ba0e24092?auto=format&fit=crop&w=800&q=80',
                ),
              ),
              SizedBox(width: 10),
              Text(
                'Spaghetti Bolognese',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(width: 10),
              Text(
                'A classic Italian pasta dish with rich, meaty sauce.',
                style: TextStyle(fontSize: 14, color: Colors.grey[700]),
              ),
              Row(
                children: [
                  Icon(Icons.timer, color: Colors.amber, size: 20),
                  Text('Prep time: 1h', style: TextStyle(fontSize: 16)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
