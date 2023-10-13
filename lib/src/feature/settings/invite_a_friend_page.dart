import 'package:flutter/material.dart';
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
      // ignore: prefer_if_null_operators
      leading: image != null ? image : icon,
      title: Text(title),
      subtitle: Text(subtitle),
      onTap: onTap,
    );
  }
}
class InviteFriendPage extends StatelessWidget {
  const InviteFriendPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(Strings.invite),
        backgroundColor: Colors.green,
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: [
          SettingOption(
            title: Strings.share,
            subtitle: '',
            onTap: () {},
            icon: const Icon(Icons.share),
            image: Image.asset('assets/images/img_2.jpg'),
          ),
          SettingOption(
            title: Strings.abn,
            subtitle: Strings.phone,
            onTap: () {},
            icon: const Icon(Icons.person),
          ),
          SettingOption(
            title: Strings.amal,
            subtitle: Strings.phone,
            onTap: () {},
            icon: const Icon(Icons.person),
          ),
          SettingOption(
            title: Strings.anandhu,
            subtitle: Strings.phone,
            onTap: () {},
            icon: const Icon(Icons.person),
          ),
          SettingOption(
            title: Strings.anas,
            subtitle: Strings.phone,
            onTap: () {},
            icon: const Icon(Icons.person),
          ),
          SettingOption(
            title: Strings.angel,
            subtitle: Strings.phone,
            onTap: () {},
            icon: const Icon(Icons.person),
          ),
          SettingOption(
            title: Strings.kailas,
            subtitle: Strings.phone,
            onTap: () {},
            icon: const Icon(Icons.person),
          ),
          SettingOption(
            title: Strings.lk,
            subtitle: Strings.phone,
            onTap: () {},
            icon: const Icon(Icons.person),
          ),
          SettingOption(
            title: Strings.vino,
            subtitle: Strings.phone,
            onTap: () {},
            icon: const Icon(Icons.person),
          ),
        ],
      ),
    );
  }
}
