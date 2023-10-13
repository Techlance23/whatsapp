import 'package:flutter/material.dart';
import 'package:whatsapp/src/pages/strings.dart';
import 'package:whatsapp/src/pages/textstyles.dart';


class SelectContactPage extends StatefulWidget {
  @override
  _SelectContactPageState createState() => _SelectContactPageState();
}

class _SelectContactPageState extends State<SelectContactPage> {
  final List<Contact> contacts = [
    Contact(name: 'Helana(You)', status: 'Message yourself', profileImage: "assets/hel.jpeg"),
    Contact(name: 'Sreehari', status: 'Hey there! I am using Whatsapp', profileImage: 'assets/sree.jpeg'),
    Contact(name: 'Catherine', status: 'Good things take time', profileImage: 'assets/cat.jpeg'),
    Contact(name: 'Sayooj', status: 'Pray, Hold on, heal', profileImage: 'assets/sayu.jpeg'),
    Contact(name: 'Amal', status: 'Better days are on the way', profileImage: 'assets/amal.jpeg'),
  ];
  bool isSearchBarActive = false;
  TextEditingController searchController = TextEditingController();

  void toggleSearchBar() {
    setState(() {
      isSearchBarActive = !isSearchBarActive;
    });
  }

  List<Contact> getFilteredContacts(String query) {
    return contacts
        .where((contact) =>
        contact.name.toLowerCase().contains(query.toLowerCase()))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(AppStrings.text1),
            Text(
              ' ${contacts.length} contacts',
              style: AppTextStyles.ts1,
            ),
          ],
        ),
        backgroundColor: Colors.green,
        actions: <Widget>[
          IconButton(
            icon: Icon(isSearchBarActive ? Icons.close : Icons.search),
            onPressed: toggleSearchBar,
          ),
          PopupMenuButton<String>(
            onSelected: (value) {
              if (value == 'settings') {
                // Handle settings option
              } else if (value == 'help') {
                // Handle help option
              }
            },
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem<String>(
                  value: 'settings',
                  child: Text(AppStrings.text2),
                ),
                PopupMenuItem<String>(
                  value: 'help',
                  child: Text(AppStrings.text3),
                ),
              ];
            },
          ),
        ],
        flexibleSpace: isSearchBarActive
            ? AppBarSearchBar(searchController: searchController)
            : null, // Use null when search bar is not active
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              SizedBox(height: 80, width: 16),
              CircleAvatarWithIcon(
                icon: Icons.group,
                backgroundColor: Colors.green,
                radius: 24.0,
                iconSize: 16.0,
              ),
              SizedBox(width: 16),
              Text(AppStrings.text4,
                style: AppTextStyles.ts1,
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: <Widget>[
              SizedBox(width: 16),
              CircleAvatarWithIcon(
                icon: Icons.person_add,
                backgroundColor: Colors.green,
                radius: 24.0,
                iconSize: 16.0,
              ),
              SizedBox(width: 16),
              Text(AppStrings.text5,
                style: AppTextStyles.ts1,
              ),
              SizedBox(width: 150),
              Icon(
                Icons.qr_code_2,
                size: 25,
              ),
            ],
          ),
          SizedBox(height: 30),
          Row(
            children: <Widget>[
              SizedBox(width: 16),
              CircleAvatarWithIcon(
                icon: Icons.groups_3,
                backgroundColor: Colors.green,
                radius: 24.0,
                iconSize: 16.0,
              ),
              SizedBox(width: 16),
              Text(
                AppStrings.text6,
                style: AppTextStyles.ts1,
              ),
            ],
          ),
          SizedBox(height: 30),
          Padding(
            padding: EdgeInsets.only(left: 16),
            child: Text(
              AppStrings.text7,
              style: AppTextStyles.ts2
            ),
          ),
          isSearchBarActive
              ? Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: getFilteredContacts(searchController.text).length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(
                        getFilteredContacts(searchController.text)[index]
                            .profileImage),
                  ),
                  title: Text(
                      getFilteredContacts(searchController.text)[index]
                          .name),
                  subtitle: Text(
                      getFilteredContacts(searchController.text)[index]
                          .status),
                  onTap: () {
                    // Handle contact selection
                  },
                );
              },
            ),
          )
              : Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: contacts.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage:
                    AssetImage(contacts[index].profileImage),
                  ),
                  title: Text(contacts[index].name),
                  subtitle: Text(contacts[index].status),
                  onTap: () {
                    // Handle contact selection
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class AppBarSearchBar extends StatelessWidget {
  final TextEditingController searchController;

  AppBarSearchBar({required this.searchController});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: TextField(
        controller: searchController,
        decoration: InputDecoration(
          hintText: 'Search...',
          border: InputBorder.none,
        ),
      ),
    );
  }
}

class CircleAvatarWithIcon extends StatelessWidget {
  final IconData icon;
  final double radius;
  final double iconSize;
  final Color iconColor;
  final Color backgroundColor;

  CircleAvatarWithIcon({
    required this.icon,
    this.radius = 24.0,
    this.iconSize = 16.0,
    this.iconColor = Colors.white,
    this.backgroundColor = Colors.blue,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundColor: backgroundColor,
      child: Icon(
        icon,
        color: iconColor,
        size: iconSize,
      ),
    );
  }
}

class Contact {
  final String name;
  final String status;
  final String profileImage;

  Contact({required this.name, required this.status, required this.profileImage});
}
