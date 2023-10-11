import 'package:flutter/material.dart';
import 'package:whatsapp/src/core/helper/datetime_helper.dart';
import 'package:whatsapp/src/core/theme/text_theme.dart';

class CallListItemWidget extends StatelessWidget {
  final String title;
  final String image;
  final DateTime subTitle;
  const CallListItemWidget({super.key, required this.title, required this.image, required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(image),
        radius: 40,
      ),
      title: Text(title, style: AppTextTheme.titleTextstyle),
      subtitle: Text(DateTimeHelper.getFormattedDate(subTitle), style: TextStyle(color: Colors.black,fontSize: 12)),
      trailing: Icon(Icons.phone, color: Colors.green,),
    );
  }
}