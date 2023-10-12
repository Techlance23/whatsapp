import 'package:flutter/material.dart';
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
          title: 'Amal',
          image: "https://cdn-icons-png.flaticon.com/512/219/219983.png",
          subTitle: "15 minutes ago",
        ),StatusListItemWidget(
          title: 'Sooraj',
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
          title: 'Anson',
          image: "https://cdn-icons-png.flaticon.com/512/219/219983.png",
          subTitle: "50 minutes ago",
        ),
        StatusListItemWidget(
          title: 'Alex',
          image: "https://cdn-icons-png.flaticon.com/512/219/219983.png",
          subTitle: "9:01",
        ),
        Padding(
            padding: const EdgeInsets.all(6.0),
            child: Align(
              alignment: Alignment.bottomRight,
              child: FloatingActionButton(
                backgroundColor: Colors.green,
                elevation: 10,
                child: Icon(Icons.camera),
                onPressed: () {
                
                },
              ),
            ),
          ),
        
      ],
    );
  }
}
