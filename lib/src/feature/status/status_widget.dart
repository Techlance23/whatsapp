import 'package:flutter/material.dart';
import 'package:whatsapp/src/core/constants/strings.dart';
import 'package:whatsapp/src/feature/status/status_first_page.dart';
import 'package:whatsapp/src/feature/status/status_list_item_widget.dart';

class StatusListWidget extends StatelessWidget {
  const StatusListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        StatusItem(),
        StatusListItemWidget(
          title:Strings.name1,
          image: Strings.img,
          subTitle: Strings.sub1,
        ),
        StatusListItemWidget(
          title: Strings.name2,
          image: Strings.img2,
          subTitle: Strings.sub2,
        ),
        StatusListItemWidget(
          title: Strings.name3,
          image: Strings.img3,
          subTitle: Strings.sub3,
        ),
        StatusListItemWidget(
          title: Strings.name4,
          image: Strings.img4,
          subTitle: Strings.sub4,
        ),
        StatusListItemWidget(
          title: Strings.name5,
          image: Strings.img5,
          subTitle: Strings.sub5,
        ),
        StatusListItemWidget(
          title: Strings.name6,
          image: Strings.img6,
          subTitle: Strings.sub6,
        ),
        Padding(
          padding: const EdgeInsets.all(6.0),
          child: Align(
            alignment: Alignment.bottomRight,
            child: FloatingActionButton(
              backgroundColor: Colors.green,
              elevation: 10,
              child: Icon(Icons.camera),
              onPressed: () {},
            ),
          ),
        ),
      ],
    );
  }
}