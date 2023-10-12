import 'package:flutter/material.dart';
import 'package:whatsapp/src/feature/status/status_list_item_widget.dart';

class StatusListWidget extends StatelessWidget {
  const StatusListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        StatusListItemWidget(
          title: 'Amal',
          image: "https://cdn-icons-png.flaticon.com/512/219/219983.png",
          subTitle: "15 minutes ago",
        ),StatusListItemWidget(
          title: 'Sanju',
          image: "https://cdn-icons-png.flaticon.com/512/219/219983.png",
          subTitle: "20 minutes ago",
        ),
        StatusListItemWidget(
          title: 'Deepak',
          image: "https://cdn-icons-png.flaticon.com/512/219/219983.png",
          subTitle: "30 minutes ago",
        ),
        StatusListItemWidget(
          title: 'Arun',
          image: "https://cdn-icons-png.flaticon.com/512/219/219983.png",
          subTitle: "34 minutes ago",
        ),
        StatusListItemWidget(
          title: 'Akshay',
          image: "https://cdn-icons-png.flaticon.com/512/219/219983.png",
          subTitle: "50 minutes ago",
        ),
        StatusListItemWidget(
          title: 'Binoy',
          image: "https://cdn-icons-png.flaticon.com/512/219/219983.png",
          subTitle: "9:01",
        ),
        StatusListItemWidget(
          title: 'Ciril',
          image: "https://cdn-icons-png.flaticon.com/512/219/219983.png",
          subTitle: "8:34",
        ),
        StatusListItemWidget(
          title: 'Alex',
          image: "https://cdn-icons-png.flaticon.com/512/219/219983.png",
          subTitle: "7:12",
        ),
        StatusListItemWidget(
          title: 'Mithun',
          image: "https://cdn-icons-png.flaticon.com/512/219/219983.png",
          subTitle: "6:19",
        )
      ],
    );
  }
}
