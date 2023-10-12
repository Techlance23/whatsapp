import 'package:flutter/material.dart';
import 'package:whatsapp/src/core/theme/text_theme.dart';

class StatusItem extends StatelessWidget {
  const StatusItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Status",style: AppTextTheme.titleTextstyle,),
              Icon(Icons.more_vert)
            ],
          ),
        ),
        SizedBox(height: 10,),
        ListTile(
          leading: CircleAvatar(
        backgroundImage: NetworkImage("https://cdn-icons-png.flaticon.com/512/219/219983.png"),
        backgroundColor: Colors.green,
        radius: 40,
      ),
      title: Text(
        "My status",
        style: AppTextTheme.titleTextstyle,
      ),
      subtitle: Text(
        "Tap to add status update",
        style: TextStyle(color: Colors.black, fontSize: 12),
      ),
        ),
        SizedBox(height: 10,),
        Padding(
          padding: const EdgeInsets.only(left:10.0),
          child: Row(
            children: [
              Text("Recent updates",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),)
            ],
          ),
        ),
      ],
    );
  }
}