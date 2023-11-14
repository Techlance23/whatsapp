import 'package:flutter/material.dart';
import 'package:whatsapp/src/core/helper/datetime_helper.dart';
import 'package:whatsapp/src/core/theme/text_theme.dart';

class ChatListItemWidget extends StatelessWidget {
  final String title;
  final String subTitle;
  final String image;
  final DateTime lastChatTime;
  final int unreadCount;

  const ChatListItemWidget(
      {super.key,
      required this.title,
      required this.subTitle,
      required this.image,
      required this.lastChatTime,
      required this.unreadCount});

  @override
  Widget build(BuildContext context) {
    return ListTile(

      leading: CircleAvatar(
        backgroundImage: AssetImage("assets/images/user1.png"),
        radius: 40,
      ),

      title: Text('$title', style: AppTextTheme.titleTextstyle,),
      subtitle: Text('$subTitle', style: AppTextTheme.subtitleTextstyle,),
      trailing: Column(children: [
        Text(DateTimeHelper.getFormattedDate(lastChatTime),
        style: TextStyle(
          color: Colors.black54,
          fontSize: 12
        ),),
        SizedBox(
          width: 8,
        ),



        Visibility(
          visible: unreadCount>0,
          child: Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
              color: Colors.green,
              shape: BoxShape.circle,
              // borderRadius: BorderRadius.circular(50)
            ),
            child: Align(
              alignment: Alignment.center,
              child: Text("$unreadCount",style: TextStyle(
                color: Colors.white
              ),),
            ),
          ))
      ]),
      
    );

  }
}
