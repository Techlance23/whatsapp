import 'package:flutter/material.dart';
import 'package:whatsapp/src/core/helper/datetime_helper.dart';
import 'package:whatsapp/src/core/theme/text_theme.dart';

class CallListItemWidget extends StatelessWidget {
  final String title;
  final DateTime subTitle;
  final String image;

  const CallListItemWidget(
      {super.key,
      required this.title,
      required this.subTitle,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(image),
        backgroundColor: Colors.green,
        radius: 40,
      ),
      title: Text(
        "$title",
        style: AppTextTheme.titleTextstyle,
      ),
      subtitle: Text(
        DateTimeHelper.getFormattedDate(subTitle),
        style: TextStyle(color: Colors.black, fontSize: 12),
      ),
      trailing: Column(
        children: [
          SizedBox(
            height: 23,
          ),

          Icon(
            Icons.phone,
            color: Colors.green,
          ),
          // Text(
          //   DateTimeHelper.getFormattedDate(subTitle),
          //   style: TextStyle(color: Colors.black, fontSize: 12),
          // ),
          SizedBox(
            width: 8,
          ),
        ],
      ),
    );
    
  }
}
