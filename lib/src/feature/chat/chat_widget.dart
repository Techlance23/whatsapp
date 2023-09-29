import 'package:flutter/material.dart';
import 'package:whatsapp/src/feature/chat/chat_list_item_widget.dart';

class ChatListWidget extends StatelessWidget {
  const ChatListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ChatListItemWidget(
            title: "Amal",
            subTitle: "hellooo",
            image: "https://cdn-icons-png.flaticon.com/512/219/219983.png",
            lastChatTime: DateTime(2023, 09, 03),
            unreadCount: 2)
      ],
    );
  }
}
