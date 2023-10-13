import 'package:flutter/material.dart';
import 'package:whatsapp/src/feature/community/community_list_item_widget.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        CommunityWidget(title: "Cusat Updates", subTitle: "6282457856 added", image: "assets/image/campus10.jpg", lastChatTime: DateTime(2023,05,11), unreadCount: 2),
        CommunityWidget(title: "Christ ", subTitle: "Results published", image: "assets/image/christ college.jpg", lastChatTime: DateTime(2023,05,12), unreadCount: 5)
      ],
    );
  }
}