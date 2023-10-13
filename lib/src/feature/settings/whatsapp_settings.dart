import 'package:flutter/material.dart';
import 'package:whatsapp/src/feature/settings/invite_a_friend_page.dart';
import 'package:whatsapp/src/strings/strings.dart';

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
        title: Text(Strings.settings),
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
            title: Strings.vino,
            subtitle: Strings.ws,
            onTap: () {},
            icon: Icon(Icons.account_box),
            image: Image.asset('assets/images/vino.jpg'),
          ),
          SettingOption(
            title: Strings.ac,
            subtitle: Strings.acc,
            onTap: () {},
            icon: Icon(Icons.account_box),
          ),
          SettingOption(
            title: Strings.pr,
            subtitle: Strings.prc,
            onTap: () {},
            icon: Icon(Icons.privacy_tip),
          ),
          SettingOption(
            title: Strings.av,
            subtitle: Strings.avc,
            onTap: () {},
            icon: Icon(Icons.image),
          ),
          SettingOption(
            title: Strings.cc,
            subtitle: Strings.ccc,
            onTap: () {},
            icon: Icon(Icons.chat),
          ),
          SettingOption(
            title: Strings.nc,
            subtitle: Strings.ncc,
            onTap: () {},
            icon: Icon(Icons.notifications),
          ),
          SettingOption(
            title: Strings.sc,
            subtitle: Strings.scc,
            onTap: () {},
            icon: Icon(Icons.storage),
          ),
          SettingOption(
            title: Strings.ap,
            subtitle: Strings.apc,
            onTap: () {},
            icon: Icon(Icons.language),
          ),
          SettingOption(
            title: Strings.hp,
            subtitle: Strings.hpc,
            onTap: () {},
            icon: Icon(Icons.help),
          ),
          SettingOption(
            title: Strings.invite,
            subtitle: '',
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => InviteFriendPage()));
            },
            icon: Icon(Icons.person_add),
          ),
        ],
      ),
    );
  }
}
