import 'package:flutter/material.dart';
import 'package:whatsapp/src/feature/settings/chatsettings/qrcode/my_code.dart';
import 'package:whatsapp/src/feature/settings/chatsettings/qrcode/qr_page.dart';
import 'package:whatsapp/src/feature/settings/profile.dart';
import 'package:whatsapp/src/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.green
      
      ),
      home: QrScreen(),
    );
  }
}

