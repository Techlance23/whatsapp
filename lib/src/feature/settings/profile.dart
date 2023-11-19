import 'package:flutter/material.dart';
import 'package:whatsapp/src/color/colors.dart';
import 'package:whatsapp/src/core/constants/strings.dart';
import 'package:whatsapp/src/feature/settings/profile_widget.dart';

class WhatsAppProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Strings.profileText),
        backgroundColor: ColorConstants.kPrimaryColor,
      ),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                CircleAvatar(
                  foregroundImage: AssetImage("assets/images/user.png"),
                  backgroundImage: AssetImage("assets/images/user.png"),
                  radius: 70.0,

                  
                ),
                 Padding(
                   padding: const EdgeInsets.fromLTRB(100, 0, 0, 0),
                   child: CircleAvatar(
                      backgroundColor: Colors.green,
                      radius: 25,
                      child: IconButton(
                        iconSize:15,
                        color: Colors.white,
                        icon: const Icon(Icons.camera_alt_rounded),
                        onPressed: () {
                        },
                      ),
                    ),
                 ),
                SizedBox(height: 10.0),
              ],
            ),
          ),
          ProfileWidget(
            icon: Icon(Icons.account_circle),
            title: Strings.usernametext,
            subTitle: Strings.subText,
          ),
          ProfileWidget(
              icon: Icon(Icons.info_outline),
              title: Strings.aboutText,
              subTitle: ''),
          ProfileWidget(
              icon: Icon(Icons.phone), title: Strings.phonenumber, subTitle: '')
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: WhatsAppProfilePage(),
  ));
}