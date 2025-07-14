import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  final List<String> categories = const ['All', 'Shoes', 'Watches', 'Tech'];
  final List<Map<String, String>> products = const [
    {"title": "Sneakers", "image": "assets/1.jpg"},
    {"title": "Smart Watch", "image": "assets/1.jpg"},
    {"title": "Headphones", "image": "assets/1.jpg"},
    {"title": "Camera", "image": "assets/1.jpg"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('MyShop')),
      body: ListView(
        children: [
          Image.asset('assets/1.jpg', height: 180, fit: BoxFit.cover),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: categories.map((cat) {
              return Chip(
                label: Text(cat),
                backgroundColor: Colors.blue[50],
                labelStyle: TextStyle(fontWeight: FontWeight.bold),
              );
            }).toList(),
          ),

          GridView.count(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            crossAxisCount: 2,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            children: products.map((product) {
              return Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                elevation: 4,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(product['image']!, height: 80),
                    SizedBox(height: 10),
                    Text(
                      product['title']!,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
