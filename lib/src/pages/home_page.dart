import 'package:flutter/material.dart';
import 'package:whatsapp/src/feature/calls/call_widget.dart';
import 'package:whatsapp/src/feature/chat/chat_widget.dart';
import 'package:whatsapp/src/feature/community/community_widget.dart';
import 'package:whatsapp/src/feature/settings/whatsapp_settings.dart';
import 'package:whatsapp/src/feature/status/status_widget.dart';
import 'package:whatsapp/src/strings/strings.dart';
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
          backgroundColor: Strings.color,
          title: const Text(Strings.wp),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => WhatsAppSettingsScreen()));
              },
              icon: const Icon(Icons.settings),
            )
          ],
          bottom: const TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.people),
              ),
              Tab(
                text: Strings.ch,
              ),
              Tab(
                text: Strings.st,
              ),
              Tab(
                text: Strings.cl,
              ),
            ],
          ),
        ),
        body: SafeArea(
          child: TabBarView(
            children: [
              const MyWidget(),
              const ChatListWidget(),
              const StatusListWidget(),
              const callListWidget(),
              WhatsAppSettingsScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
