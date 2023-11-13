import 'package:flutter/material.dart';
import 'package:whatsapp/src/colors/colors.dart';

class MicChat extends StatelessWidget {
  const MicChat({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: ColorConstants.kPrimaryColor,
      ),
      child: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.mic,
            color: Colors.white,
          )),
    );
  }
}
