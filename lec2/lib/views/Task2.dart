import 'package:flutter/material.dart';

class contactInfo extends StatelessWidget {
  const contactInfo({super.key});

  final List<Map<String, String>> contacts = const [
    {"name": "Ahmed Ali", "phone": "+201234567890"},
    {"name": "Sara Mohamed", "phone": "+201098765432"},
    {"name": "Khaled Hassan", "phone": "+201112223334"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('contact Info')),
      body: ListView.builder(
        itemCount: contacts.length,
        itemBuilder: (context, item) {
          final number = contacts[item];
          return ListTile(
            leading: Icon(Icons.account_circle, size: 40),
            title: Text(number['name']!),
            subtitle: Text(number['phone']!),
            trailing: Icon(Icons.call, color: Colors.green),
          );
        },
      ),
    );
  }
}
