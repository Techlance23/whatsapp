import 'package:flutter/material.dart';
import 'package:whatsapp/src/core/strings/strings.dart';
import 'package:whatsapp/src/feature/chat/chat_list_item_widget.dart';

class ChatListWidget extends StatelessWidget {
  const ChatListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ChatListItemWidget(
            title: Strings1().title,
            subTitle: Strings1().subtitleText,
            image: Strings1().image,
            lastChatTime: DateTime(2023, 09, 03),
            unreadCount: 2)
      ],
    );
  }
}
