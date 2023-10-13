import 'package:flutter/material.dart';
import 'package:whatsapp/src/pages/strings.dart';

class StorageDataPage extends StatefulWidget {
  @override
  _StorageDataPageState createState() => _StorageDataPageState();
}

class _StorageDataPageState extends State<StorageDataPage> {
  bool useLessDataForCalls = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(AppStrings.text8),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(
              Icons.stop_rounded,
              size: 40,
            ),
            title: Text(AppStrings.text9),
            subtitle: Text(AppStrings.text10),
            onTap: () {
            },
          ),
          ListTile(
            leading: Icon(
              Icons.incomplete_circle_sharp,
              size: 28,
            ),
            title: Text(AppStrings.text11),
            subtitle: Text(AppStrings.text12),
            onTap: () {
            },
          ),
          ListTile(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                  child: Row(
                    children: [
                      SizedBox(
                        width: 55,
                      ),
                      Text(AppStrings.text13),
                    ],
                  ),
                ),
                Switch(
                  value: useLessDataForCalls,
                  onChanged: (bool value) {
                    setState(() {
                      useLessDataForCalls = value;
                    });

                  },
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: ListTile(
              title: Row(
                children: [
                  SizedBox(
                    width: 55,
                  ),
                  Text(AppStrings.text14),
                ],
              ),
              subtitle: Row(
                children: [
                  SizedBox(
                    width: 55,
                  ),
                  Text(AppStrings.text15),
                ],
              ),
            ),
          ),
          ListTile(
            title: Text(AppStrings.text16),
            subtitle:
            Text(AppStrings.text17),
          ),
          ListTile(
            title: Text(AppStrings.text19),
            subtitle: Text(AppStrings.text18),
            contentPadding: EdgeInsets.only(left: 70),
          ),
          ListTile(
            title: Text(AppStrings.text20),
            subtitle: Text(AppStrings.text18),
            contentPadding: EdgeInsets.only(left: 70),
          ),
          ListTile(
            title: Text(AppStrings.text21),
            subtitle: Text(AppStrings.text18),
            contentPadding: EdgeInsets.only(left: 70),
          ),
        ],
      ),
    );
  }
}
