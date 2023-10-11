import 'package:flutter/material.dart';
import 'package:whatsapp/src/core/strings/strings.dart';
import 'package:whatsapp/src/feature/calls/calllistitem_widget.dart';

class callListWidget extends StatelessWidget {
  const callListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        CallListItemWidget(
          title: Strings1().title,
          image: Strings1().image,
          subTitle: Strings1().subTitle,
          
        ),
        
      ],
    );
  }
}