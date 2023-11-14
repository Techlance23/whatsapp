import 'package:flutter/material.dart';
import 'package:whatsapp/src/colors/colors.dart';
import 'package:whatsapp/src/core/constant/strings.dart';
import 'package:whatsapp/src/feature/calls/call_widget.dart';
import 'package:whatsapp/src/feature/chat/chat_widget.dart';
import 'package:whatsapp/src/feature/community/community_widget.dart';
import 'package:whatsapp/src/feature/status/status_widget.dart';
// import 'package:whatsapp/src/feature/calls/call_widget.dart';

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
          backgroundColor: ColorConstants.kPrimaryColor,
          title: Text(Strings.whatsApptext),
          bottom: TabBar(tabs: [
            Tab(
              icon: Icon(Icons.people),
            ),
            Tab(
              text: Strings.chatText,
            ),
            Tab(
              text: Strings.statusText,
            ),
            Tab(
              text: Strings.callsText,
            ),
          ]),
        ),
        body: SafeArea(
            child: TabBarView(
          children: [
            ChatListWidget(),
            MyWidget(),
            StatusListWidget(),
            callListWidget(),
          ],
        )),
      ),
    );
  }
}
