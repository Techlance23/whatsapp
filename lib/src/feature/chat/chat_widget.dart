import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/src/core/constant/strings.dart';
import 'package:whatsapp/src/feature/chat/chat_list_item_widget.dart';
import 'package:whatsapp/src/feature/chat_page/chat_page.dart';
import 'package:whatsapp/src/widgets/divider.dart';

class ChatListWidget extends StatelessWidget {
  const ChatListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => ChatScreenPage()));
          },
          child: ChatListItemWidget(
              title: Strings.userText,
              subTitle: Strings.msgText,
              image: "assets/images/user.png",
              lastChatTime: DateTime(2023, 09, 03),
              unreadCount: 2),
        ),

            DividerX().divider,

            ChatListItemWidget(
            title: Strings.userText,
            subTitle: Strings.msgText,
            image: "assets/images/user.png",
            lastChatTime: DateTime(2023, 09, 03),
            unreadCount: 2)
      ],
    );
  }
}
