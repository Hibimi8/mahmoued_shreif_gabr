import 'package:flutter/material.dart';

class actionButton extends StatelessWidget {
  const actionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Card with Action Button')),
      body: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Discover Flutter',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Flutter is Google’s UI toolkit for building beautiful, natively compiled apps for mobile, web, and desktop from a single codebase.',
                style: TextStyle(fontSize: 14, color: Colors.grey[700]),
              ),
              SizedBox(height: 20),
              Container(
                color: Colors.red,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [Icon(Icons.arrow_forward), Text('Read More')],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
