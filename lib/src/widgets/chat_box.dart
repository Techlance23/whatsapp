import 'package:flutter/material.dart';
import 'package:whatsapp/src/core/constant/strings.dart';

class ChatBox extends StatelessWidget {
  const ChatBox({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        hintText: Strings.messageText, hintStyle: TextStyle(color: Colors.grey),
      constraints: BoxConstraints(maxHeight: 40,
      maxWidth: 500),
      prefixIcon: Icon(Icons.emoji_emotions),
      suffixIcon: Row(
       mainAxisAlignment: MainAxisAlignment.spaceBetween,
       mainAxisSize: MainAxisSize.min,
       children: [
        IconButton(onPressed: (){}, icon: Icon(Icons.add)),
        IconButton(onPressed: (){}, icon: Icon(Icons.camera))
       ],

      ),
      border:UnderlineInputBorder(borderRadius: BorderRadius.circular(20))
      ),
    );
  }
}