import 'dart:js';

import 'package:flutter/material.dart';
import 'package:whatsapp/src/colors/colors.dart';
import 'package:whatsapp/src/core/constant/strings.dart';
import 'package:whatsapp/src/core/theme/text_theme.dart';

class AppBarX {
  AppBar appBar = AppBar(
    elevation: 0,
    automaticallyImplyLeading: false,
    backgroundColor: ColorConstants.kPrimaryColor,
    flexibleSpace: SafeArea(
      child: Container(
        padding: EdgeInsets.only(right: 16),
        child: Row(
          children: <Widget>[
            IconButton(
              onPressed: () {
                Navigator.pop(context as BuildContext);
              },
              icon: Icon(
                Icons.arrow_back,
                color: ColorConstants.whiteColor,
              ),
            ),
            SizedBox(
              width: 2,
            ),
            CircleAvatar(
              backgroundImage: AssetImage("assets/images/user1.png"),
              maxRadius: 20,
            ),
            SizedBox(
              width: 12,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    Strings.userText,
                    style: AppTextTheme.titleTextstyleWhite,
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    Strings.userStatusOnline,
                    style: AppTextTheme.subtitleTextstyleWhite,
                  ),
                ],
              ),
            ),
            Icon(
              Icons.phone,
              color: Colors.white,
            ),
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.video_call,
              color: Colors.white,
            ),
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.settings,
              color: Colors.white,
            )
          ],
        ),
      ),
    ),
  );
}
