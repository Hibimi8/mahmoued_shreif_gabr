import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Product Details')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(child: Image.asset('assets/1.jpg', height: 250)),
          Text(
            'Sneakers',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          Text(
            'High-quality running shoes with modern design and comfort.',
            style: TextStyle(color: Colors.grey[700]),
          ),
          Text(
            '\$59.99',
            style: TextStyle(fontSize: 20, color: Colors.green[700]),
          ),
          ElevatedButton.icon(
            onPressed: () {},
            icon: Icon(Icons.shopping_cart),
            label: Text('Buy Now', style: TextStyle(color: Colors.white)),
            style: ElevatedButton.styleFrom(backgroundColor: Colors.blueAccent),
          ),
        ],
      ),
    );
  }
}
