import 'package:flutter/material.dart';
import 'package:whatsapp/src/feature/settings/whatsapp_settings.dart';
import 'package:whatsapp/src/strings/strings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: Strings.demo,
      theme: ThemeData(primaryColor: Colors.green),
      home: WhatsAppSettingsScreen(),
    );
  }
}
