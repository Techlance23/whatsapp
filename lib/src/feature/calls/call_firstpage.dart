import 'package:flutter/material.dart';
import 'package:whatsapp/src/core/constants/strings.dart';
import 'package:whatsapp/src/core/theme/text_theme.dart';

class CallFirst extends StatelessWidget {
  const CallFirst({super.key, required this.icon});
  final Icon icon;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: icon),
          ),
          title: Text(
            Strings.text1,
            style: AppTextTheme.titleTextstyle,
          ),
          subtitle: Text(
            Strings.text2,
            style: AppTextTheme.subtitleTextstyle,
          ),
        ),
        SizedBox(
          height: 7,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Row(
            children: [
              Text(Strings.recent, style: AppTextTheme.titleTextstyle)
            ],
          ),
        ),
      ],
    );
  }
}