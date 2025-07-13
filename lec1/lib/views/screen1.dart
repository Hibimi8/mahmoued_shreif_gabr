import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Container, Row, Column Text and List')),

      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(18),
              child: Text(
                'This is a Container with Text inside!',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              color: Colors.blue,
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(18),
              color: Colors.green,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'First Line of Text in Column',
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                  Text(
                    'Second Line of Text in Column',
                    style: TextStyle(color: Colors.black54, fontSize: 16),
                  ),
                  Text(
                    'Third Line of Text in Column',
                    style: TextStyle(color: Colors.black38, fontSize: 16),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: EdgeInsets.all(18),
                  child: Text('Left'),
                  color: Colors.orange,
                ),
                Container(
                  padding: EdgeInsets.all(18),
                  child: Text('Center'),
                  color: Colors.blue,
                ),
                Container(
                  padding: EdgeInsets.all(18),
                  child: Text('Right'),
                  color: Colors.red,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
