import 'package:flutter/material.dart';
import 'package:whatsapp/src/core/theme/text_theme.dart';

class StatusListItemWidget extends StatelessWidget {
  final String title;
  final String image;
  final String subTitle;
  const StatusListItemWidget({super.key, required this.title, required this.image, required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 10,),
        Padding(
          padding: const EdgeInsets.all(13.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Status",style: AppTextTheme.titleTextstyle,),
              Icon(Icons.more_vert)
            ],
          ),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(image),
            radius: 40,
          ),
          title: Text("My status", style: AppTextTheme.titleTextstyle,),
          subtitle: Text("Tap to add status update", style: AppTextTheme.subtitleTextstyle,),
        ),
         SizedBox(height: 10,),
        Padding(
          padding: const EdgeInsets.all(13.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start ,
            children: [
              Text("Recent updates")
            ],
          ),
        ),

        ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(image),
            radius: 40,
          ),
          title: Text(title, style: AppTextTheme.titleTextstyle,),
          subtitle: Text(subTitle, style: AppTextTheme.subtitleTextstyle,),
        ),
      ],
    );
  }
}