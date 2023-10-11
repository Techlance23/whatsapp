import 'package:flutter/material.dart';
import 'package:whatsapp/src/core/strings/strings.dart';
import 'package:whatsapp/src/feature/status/status_item_list_widget.dart';

class StatusListWidget extends StatelessWidget {
  const StatusListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        StatusListItemWidget(
            title: Strings1().title,
            image: Strings1().image,
            subTitle: "8 minutes ago"),
            
      ],
    );
  }
}
