import 'package:flutter/material.dart';
import 'package:whatsapp/src/core/theme/text_theme.dart';

class Call_frst extends StatelessWidget {
  const Call_frst({super.key, required this.icon});
  final Icon icon;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         ListTile(
          leading: Padding(
            padding: const EdgeInsets.only(top:8.0),
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(30),
              ),
              child: icon
              ),
          ),
          
          
          title: Text(
            "Create call Link",
            style: AppTextTheme.titleTextstyle,
          ),
          subtitle: Text(
            "Share a link for your Whatsapp Call",
            style: TextStyle(color: Colors.black, fontSize: 12),
          ),
        ),
        SizedBox(height: 7,),
        Padding(
          padding: const EdgeInsets.only(left:10.0),
          child: Row(
            children: [
              Text("Recent",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),)
            ],
          ),
        ),
      ],
    );
  }
}