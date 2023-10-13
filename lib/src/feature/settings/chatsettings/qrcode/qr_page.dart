import 'package:flutter/material.dart';
import 'package:whatsapp/src/feature/community/community_widget.dart';
import 'package:whatsapp/src/feature/settings/chatsettings/qrcode/my_code.dart';
import 'package:whatsapp/src/feature/settings/chatsettings/qrcode/scan_qr.dart';


class QrScreen extends StatefulWidget {
  const QrScreen({super.key});

  @override
  State<QrScreen> createState() => _QrScreenState();
}

class _QrScreenState extends State<QrScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 2, child: Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text('QR Code'),
          bottom: TabBar(tabs: [

            
            Tab(
              text: 'My Code',
             
            ),
            Tab(
              text: 'Scan Code',
            ),
            
            
          ]),
        ),
        body: SafeArea(child: TabBarView(children: [

          MyQR(),
          ScanCode()

        ],)),
    ));
  }
}