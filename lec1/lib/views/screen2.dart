import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Container, Row, Column Text and List')),
      body: Column(
        children: [
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.all(18),
            child: Row(
              children: [
                Icon(Icons.star),
                Text(
                  'This is a Container with an Icon and Text!',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            color: Colors.green,
          ),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.all(18),
            color: Colors.blue,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(Icons.info),
                    Text(
                      'First Line of Text in Column',
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.check),
                    Text(
                      'Second Line of Text in Column',
                      style: TextStyle(color: Colors.black54, fontSize: 16),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.warning),
                    Text(
                      'Third Line of Text in Column',
                      style: TextStyle(color: Colors.black38, fontSize: 16),
                    ),
                  ],
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
                child: Column(children: [Icon(Icons.home), Text('Home')]),
                color: Colors.orange,
              ),
              Container(
                padding: EdgeInsets.all(18),
                child: Column(
                  children: [Icon(Icons.settings), Text('settings')],
                ),
                color: Colors.blue,
              ),
              Container(
                padding: EdgeInsets.all(18),
                child: Column(
                  children: [Icon(Icons.notifications), Text('Notifications')],
                ),
                color: Colors.red,
              ),
            ],
          ),
          SizedBox(height: 20),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 6,
            itemBuilder: (context, index) {
              return ListTile(
                leading: Icon(Icons.timer, color: Colors.blue),
                title: Text('Item ${index + 1}'),
                subtitle: Text('Description for item ${index + 1}'),
                trailing: Icon(Icons.arrow_forward_ios),
              );
            },
          ),
        ],
      ),
    );
  }
}
