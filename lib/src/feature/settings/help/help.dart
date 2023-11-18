import 'package:flutter/material.dart';
import 'package:whatsapp/src/color/colors.dart';
import 'package:whatsapp/src/core/constants/strings.dart';
import 'package:whatsapp/src/feature/settings/help/help_widget.dart';

class HelpPage extends StatefulWidget {
  const HelpPage({super.key});

  @override
  State<HelpPage> createState() => _HelpPageState();
}

class _HelpPageState extends State<HelpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text( Strings.helpText),
        backgroundColor: ColorConstants.kPrimaryColor,
      ),

      body: ListView(children: [
        
        HelpWidget(icon: Icon(Icons.question_mark_outlined), title: Strings.helpCentre),
        HelpWidget(icon: Icon(Icons.contact_emergency), title: Strings.contact),
        HelpWidget(icon: Icon(Icons.document_scanner), title: Strings.tc),
        HelpWidget(icon: Icon(Icons.info), title: Strings.appInfo),

      ]),
    );

  }
}