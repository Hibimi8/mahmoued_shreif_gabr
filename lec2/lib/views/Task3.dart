import 'package:flutter/material.dart';

class products extends StatelessWidget {
  const products({super.key});

  final List<Map<String, dynamic>> product = const [
    {"name": "Shoes", "price": "\$40", "image": "assets/image/image.jpg"},
    {"name": "Watch", "price": "\$120", "image": "assets/image/image.jpg"},
    {"name": "Headphones", "price": "\$80", "image": "assets/image/image.jpg"},
    {"name": "Bag", "price": "\$55", "image": "assets/image/image.jpg"},
    {"name": "Camera", "price": "\$200", "image": "assets/image/image.jpg"},
    {"name": "Sunglasses", "price": "\$35", "image": "assets/image/image.jpg"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Product Grid')),
      body: GridView.count(
        crossAxisCount: 3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: product.map((item) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(child: Image.asset(item['image'], fit: BoxFit.contain)),
              SizedBox(height: 8),
              Text(item['name'], style: TextStyle(fontWeight: FontWeight.bold)),
              Text(item['price'], style: TextStyle(color: Colors.grey[700])),
              SizedBox(height: 8),
            ],
          );
        }).toList(),
      ),
    );
  }
}
