import 'package:flutter/material.dart';

class StorageDataPage extends StatefulWidget {
  @override
  _StorageDataPageState createState() => _StorageDataPageState();
}

class _StorageDataPageState extends State<StorageDataPage> {
  bool useLessDataForCalls = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('Storage & Data'),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(
              Icons.stop_rounded,
              size: 40,
            ),
            title: Text('Manage storage'),
            subtitle: Text('6.1 GB'),
            onTap: () {
              // Navigate to the manage storage screen
            },
          ),
          ListTile(
            leading: Icon(
              Icons.incomplete_circle_sharp,
              size: 28,
            ),
            title: Text('Network Usage'),
            subtitle: Text('11.7 GB sent . 28.9 GB received'),
            onTap: () {
              // Navigate to the network usage screen
            },
          ),
          ListTile(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                  // Use Expanded to control the width
                  child: Row(
                    children: [
                      SizedBox(
                        width: 55,
                      ),
                      Text('Use less data for calls'),
                    ],
                  ),
                ),
                Switch(
                  value: useLessDataForCalls,
                  onChanged: (bool value) {
                    setState(() {
                      useLessDataForCalls = value;
                    });
                    // Implement functionality for enabling/disabling
                    // 'Use less data for calls'
                  },
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: ListTile(
              title: Row(
                children: [
                  SizedBox(
                    width: 55,
                  ),
                  Text('Proxy'),
                ],
              ),
              subtitle: Row(
                children: [
                  SizedBox(
                    width: 55,
                  ),
                  Text('Off'),
                ],
              ),
            ),
          ),
          // Add a new section below 'Proxy'
          ListTile(
            title: Text('Media auto-download'),
            subtitle:
            Text('Voice messages are always automatically downloaded'),
          ),
          ListTile(
            title: Text('When using mobile data'),
            subtitle: Text('No media'),
            contentPadding: EdgeInsets.only(left: 70),
          ),
          ListTile(
            title: Text('When connected on Wi-Fi'),
            subtitle: Text('No mdeia'),
            contentPadding: EdgeInsets.only(left: 70),
          ),
          ListTile(
            title: Text('When roaming'),
            subtitle: Text('No media'),
            contentPadding: EdgeInsets.only(left: 70),
          ),
        ],
      ),
    );
  }
}
