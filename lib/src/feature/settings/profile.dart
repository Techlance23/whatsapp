

import 'package:flutter/material.dart';

class WhatsAppProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                CircleAvatar(
                  radius: 50.0,
                  backgroundImage: AssetImage(""), // Replace with your image
                ),
                SizedBox(height: 10.0),
                Text(
                  'John',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'john.doe@example.com',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: Icon(Icons.phone),
            title: Text('123-456-7890'),
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text('john.doe@example.com'),
          ),
          ListTile(
            leading: Icon(Icons.location_on),
            title: Text('1234 Elm St, Springfield, IL'),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: WhatsAppProfilePage(),
  ));
}