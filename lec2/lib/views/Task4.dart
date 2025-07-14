import 'package:flutter/material.dart';

class horizontalCategories extends StatelessWidget {
  const horizontalCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Categories Row')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            row(title: 'Home', color: Colors.blue),
            row(title: 'Fashion', color: Colors.pink),
            row(title: 'Tech', color: Colors.green),
            row(title: 'Beauty', color: Colors.orange),
          ],
        ),
      ),
    );
  }
}

class row extends StatelessWidget {
  const row({super.key, this.title, this.color});

  final String? title;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 60,
        margin: EdgeInsets.symmetric(horizontal: 4),
        decoration: BoxDecoration(
          color: color!.withOpacity(0.2),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: color!),
        ),
        child: Center(
          child: Text(
            title!,
            style: TextStyle(
              color: color!,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
