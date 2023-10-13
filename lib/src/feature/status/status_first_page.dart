import 'package:flutter/material.dart';
import 'package:whatsapp/src/core/strings/strings.dart';
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
              Text(
                Strings.text3,
                style: AppTextTheme.titleTextstyle,
              ),
              Icon(Icons.more_vert)
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage("assets/images/user.png"),
            backgroundColor: Colors.green,
            radius: 40,
          ),
          title: Text(
            Strings.text4,
            style: AppTextTheme.titleTextstyle,
          ),
          subtitle: Text(
            Strings.text5,
            style: AppTextTheme.subtitleTextstyle,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Row(
            children: [
              Text(
                Strings.text6,
                style: AppTextTheme.titleTextstyle,
              )
            ],
          ),
        ),
      ],
    );
  }
}
