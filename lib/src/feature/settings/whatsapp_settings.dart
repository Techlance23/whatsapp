import 'package:flutter/material.dart';
import 'package:whatsapp/src/feature/settings/invite_a_friend_page.dart';
//import 'package:whatsapp/src/feature/settings/invite_friend_widget.dart';

class SettingOption extends StatelessWidget {
  final String title;
  final String subtitle;
  final Icon icon;
  final Image? image;

  final Function() onTap;

  const SettingOption({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.onTap,
    required this.icon,
    this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: image != null ? ClipOval(child: image) : icon,
      title: Text(title),
      subtitle: Text(subtitle),
      onTap: onTap,
    );
  }
}

class WhatsAppSettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        backgroundColor: Colors.green,
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: [
          SettingOption(
            title: 'ViNo V',
            subtitle: 'Hey there! Iam using WhatsApp',
            onTap: () {},
            icon: Icon(Icons.account_box),
            image: Image.asset('assets/images/vino.jpg'),
          ),
          SettingOption(
            title: 'Account',
            subtitle: 'Security notifications, change number',
            onTap: () {},
            icon: Icon(Icons.account_box),
          ),
          SettingOption(
            title: 'Privacy',
            subtitle: 'Block contacts, disappearing messages',
            onTap: () {},
            icon: Icon(Icons.privacy_tip),
          ),
          SettingOption(
            title: 'Avatar',
            subtitle: 'Create, edit, profile photo',
            onTap: () {},
            icon: Icon(Icons.image),
          ),
          SettingOption(
            title: 'Chats',
            subtitle: 'Theme, wallpapers, chat history',
            onTap: () {},
            icon: Icon(Icons.chat),
          ),
          SettingOption(
            title: 'Notifications',
            subtitle: 'Message, group & call tones',
            onTap: () {},
            icon: Icon(Icons.notifications),
          ),
          SettingOption(
            title: 'Storage and data',
            subtitle: 'Network usage, auto-download',
            onTap: () {},
            icon: Icon(Icons.storage),
          ),
          SettingOption(
            title: 'App language',
            subtitle: 'English (device\'s language)',
            onTap: () {},
            icon: Icon(Icons.language),
          ),
          SettingOption(
            title: 'Help',
            subtitle: 'Help centre, contact us, privacy policy',
            onTap: () {},
            icon: Icon(Icons.help),
          ),
          SettingOption(
            title: 'Invite a friend',
            subtitle: '  ',
            onTap: () {
               Navigator.push(context, MaterialPageRoute(builder: (context) => InviteFriendPage()));
            },
            icon: Icon(Icons.person_add),
          ),
        ],
      ),
    );
  }
}
