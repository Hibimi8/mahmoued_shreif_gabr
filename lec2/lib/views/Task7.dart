import 'package:flutter/material.dart';

class scrollable extends StatelessWidget {
  const scrollable({super.key});

  final List<Map<String, dynamic>> products = const [
    {"title": "Shoes", "price": "\$40", "image": "assets/image/image.jpg"},
    {"title": "Watch", "price": "\$120", "image": "assets/image/image.jpg"},
    {"title": "Camera", "price": "\$200", "image": "assets/image/image.jpg"},
    {"title": "Sunglasses", "price": "\$35", "image": "assets/image/image.jpg"},
    {"title": "Headphones", "price": "\$80", "image": "assets/image/image.jpg"},
    {"title": "Backpack", "price": "\$60", "image": "assets/image/image.jpg"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('LRecipe Card with Image')),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return Card(
            margin: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            elevation: 4,
            child: ListTile(
              leading: Image.asset(
                product['image'],
                width: 60,
                height: 60,
                fit: BoxFit.cover,
              ),
              title: Text(product['title']),
              subtitle: Text(product['price']),
            ),
          );
        },
      ),
    );
  }
}
