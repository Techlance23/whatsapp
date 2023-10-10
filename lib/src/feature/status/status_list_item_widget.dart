import 'package:flutter/material.dart';
import 'package:whatsapp/src/core/helper/datetime_helper.dart';
import 'package:whatsapp/src/core/theme/text_theme.dart';

class StatusListItemWidget extends StatelessWidget {
  final String title;
  final String subTitle;
  final String image;

  const StatusListItemWidget(
      {super.key,
      required this.title,
      required this.image,
      required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 50,
        backgroundColor: Colors.green,
        child: CircleAvatar(
          radius: 40,
          backgroundImage: NetworkImage(image),
        ),
      ),
      title: Text(
        "$title",
        style: AppTextTheme.titleTextstyle,
      ),
      subtitle: Text("$subTitle",
        // DateTimeHelper.getFormattedDate(subTitle),
        style: TextStyle(color: Colors.black, fontSize: 12),
      ),
    );
  }
}
