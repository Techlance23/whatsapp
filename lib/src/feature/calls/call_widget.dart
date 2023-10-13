import 'package:flutter/material.dart';
import 'package:whatsapp/src/core/constants/strings.dart';
import 'package:whatsapp/src/feature/calls/call_firstpage.dart';
import 'package:whatsapp/src/feature/calls/call_list_item_widget.dart';

class CallListWidget extends StatelessWidget {
  const CallListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        CallFirst(
          icon: Icon(
            Icons.link,
            color: Colors.white,
          ),
        ),
        CallListItemWidget(
          title: Strings.name1,
          image: Strings.img,
          subTitle: DateTime(2023, 09, 03),
        ),
        CallListItemWidget(
          title: Strings.name5,
          image: Strings.img5,
          subTitle: DateTime(2023, 09, 01),
        ),
        CallListItemWidget(
          title: Strings.name6,
          image: Strings.img6,
          subTitle: DateTime(2023, 08, 28),
        ),
        CallListItemWidget(
          title: Strings.name3,
          image: Strings.img4,
          subTitle: DateTime(2023, 08, 26),
        ),
        CallListItemWidget(
          title: Strings.name4,
          image: Strings.img3,
          subTitle: DateTime(2023, 08, 26),
        ),
        CallListItemWidget(
          title: Strings.name7,
          image: Strings.img,
          subTitle: DateTime(2023, 08, 25),
        ),
        CallListItemWidget(
          title: Strings.name8,
          image: Strings.img4,
          subTitle: DateTime(2023, 08, 24),
        ),
        Padding(
          padding: const EdgeInsets.all(6.0),
          child: Align(
            alignment: Alignment.bottomRight,
            child: FloatingActionButton(
              backgroundColor: Colors.green,
              elevation: 10,
              child: Icon(Icons.call),
              onPressed: () {},
            ),
          ),
        ),
      ],
    );
  }
}