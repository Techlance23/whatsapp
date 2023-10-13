import 'package:flutter/material.dart';
import 'package:whatsapp/src/feature/calls/call_widget.dart';
import 'package:whatsapp/src/feature/chat/chat_widget.dart';
import 'package:whatsapp/src/feature/community/community_widget.dart';
import 'package:whatsapp/src/feature/settings/whatsapp_settings.dart';
//import 'package:whatsapp/src/feature/settings/whatsapp_settings.dart';
import 'package:whatsapp/src/feature/status/status_widget.dart';
// import 'package:whatsapp/src/feature/calls/call_widget.dart';
//import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text('WhatsApp'),
          actions: [
            IconButton(
              onPressed: () {
                // Navigate to the settings page
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => WhatsAppSettingsScreen()));
              },
              icon: Icon(Icons.settings),
            )
          ],
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.people),
              ),
              Tab(
                text: 'Chat',
              ),
              Tab(
                text: 'Status',
              ),
              Tab(
                text: 'Calls',
              ),
            ],
          ),
        ),
        body: SafeArea(
          child: TabBarView(
            children: [
              MyWidget(),
              ChatListWidget(),
              StatusListWidget(),
              callListWidget(),
              WhatsAppSettingsScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
