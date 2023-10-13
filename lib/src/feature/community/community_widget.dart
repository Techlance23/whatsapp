import 'package:flutter/material.dart';
import 'package:whatsapp/src/feature/community/community_list_item_widget.dart';
import 'package:whatsapp/src/feature/community/newCommunity/new_community_widget.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
        children: [

          Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
            child: GestureDetector(

              onTap: (){ Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => NewCommunityWidget(),
                ),
              );},
              child: ListTile(

                title: Text("New Community",
                  style: TextStyle(fontWeight: FontWeight.bold),),
                leading: Icon(Icons.people_outline_sharp),
                subtitle: Text(""),
              ),
            ),
          ),

          CommunityWidget(title: "Cusat Updates", subTitle: "6282457856 added", image: "assets/image/campus5.jpg", lastChatTime: DateTime(2023,05,11), unreadCount: 0),

          CommunityWidget(title: "Christ ", subTitle: "Results published", image: "assets/image/Christ5.jpg", lastChatTime: DateTime(2023,05,12), unreadCount: 5)
          ],
        );
    }
}