import 'package:flutter/material.dart';
import 'package:whatsapp/src/color/colors.dart';
import 'package:whatsapp/src/core/constants/strings.dart';

class ProfileWidget extends StatelessWidget {
 
  final Icon icon;
  final String title;
  final String subTitle;
 

  const ProfileWidget({super.key, required this.icon, required this.title,  required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return ListTile(

isThreeLine: true,
       leading: Icon(icon.icon),
            title: Text('$title'),
            subtitle: Text('$subTitle'),
            trailing: IconButton(onPressed: (){}, icon: Icon(Icons.edit,color: ColorConstants.kPrimaryColor,)),
    );
  }
}