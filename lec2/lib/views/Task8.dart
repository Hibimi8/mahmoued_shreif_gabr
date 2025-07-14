import 'package:flutter/material.dart';

class dashboard extends StatelessWidget {
  const dashboard({super.key});

  final List<Map<String, dynamic>> items = const [
    {"icon": Icons.person, "label": "Profile"},
    {"icon": Icons.settings, "label": "Settings"},
    {"icon": Icons.shopping_cart, "label": "Orders"},
    {"icon": Icons.notifications, "label": "Alerts"},
    {"icon": Icons.message, "label": "Messages"},
    {"icon": Icons.help, "label": "Help"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dashboard Grid with Icons')),
      body: GridView.extent(
        maxCrossAxisExtent: 200,
        mainAxisSpacing: 12,
        crossAxisSpacing: 12,
        children: items.map((item) {
          return Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Container(
              padding: EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(item['icon'], size: 40, color: Colors.blueAccent),
                  SizedBox(height: 12),
                  Text(
                    item['label'],
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
