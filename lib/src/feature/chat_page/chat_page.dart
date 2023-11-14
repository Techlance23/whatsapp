import 'package:flutter/material.dart';
import 'package:whatsapp/src/colors/colors.dart';
import 'package:whatsapp/src/core/constant/strings.dart';
import 'package:whatsapp/src/widgets/app_bar.dart';
import 'package:whatsapp/src/widgets/chat_box.dart';
import 'package:whatsapp/src/widgets/mic_chat.dart';

class ChatScreenPage extends StatefulWidget {
  const ChatScreenPage({super.key});

  @override
  State<ChatScreenPage> createState() => _ChatScreenPageState();
}

class _ChatScreenPageState extends State<ChatScreenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          height: double.maxFinite,
          width: double.infinity,
          color: ColorConstants.greyColor,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 650),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      ChatBox(),
                      SizedBox(
                        width: 10,
                      ),
                      MicChat()
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        appBar: AppBarX().appBar);
  }
}
