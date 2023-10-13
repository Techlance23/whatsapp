import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  final List<Widget>? actions;
  final Function()? onLeadingPressed;
  final bool isLeadingBackButton;

  CustomAppBar({
    required this.title,
    this.actions,
    this.onLeadingPressed,
    this.isLeadingBackButton = true,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: isLeadingBackButton
          ? IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: onLeadingPressed ?? () => Navigator.pop(context),
            )
          : null,
      title: Text(title),
      actions: actions,
    );
  }
}
