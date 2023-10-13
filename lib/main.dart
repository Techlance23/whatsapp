import 'package:flutter/material.dart';
//import 'package:whatsapp/src/feature/settings/invite_friend_widget.dart';
import 'package:whatsapp/src/feature/settings/whatsapp_settings.dart';
import 'package:whatsapp/src/pages/home_page.dart';
//import 'package:whatsapp/src/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(primaryColor: Colors.green),
      home: HomePage(),
    );
  }
}
