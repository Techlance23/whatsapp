import 'package:flutter/material.dart';

class HelpWidget extends StatelessWidget {
  final Icon icon;
  final String title;

  const HelpWidget({super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon.icon),
      title: Text('$title'),

    );
  }
}