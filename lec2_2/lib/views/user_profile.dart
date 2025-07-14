import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  final List<String> orders = const [
    "Sneakers X - \$59.99",
    "Smart Watch - \$99.00",
    "Camera Lens - \$120.00",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profile')),
      body: Column(
        children: [
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            elevation: 4,
            child: ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage('assets/1.jpg'),
              ),
              title: Text(
                'mahmoued shreif',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text('mahmoued.shreif@gmail.com'),
              trailing: IconButton(icon: Icon(Icons.edit), onPressed: () {}),
            ),
          ),
          ...orders.map((item) {
            return Card(
              child: ListTile(
                leading: Icon(Icons.receipt_long),
                title: Text(item),
              ),
            );
          }),
        ],
      ),
    );
  }
}
