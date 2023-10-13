import 'package:flutter/material.dart';

class SettingOption extends StatelessWidget {
  final String title;
  final String subtitle;
  final  Icon icon;
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
     leading: image != null?  image: icon,
      title: Text(title),
      subtitle: Text(subtitle),
      onTap: onTap,
    );
  }
}

class InviteFriendPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Invite a friend'),
        backgroundColor: Colors.green,
         actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              
            },
          ),
        ],
      ),
      body: ListView(
        children: [
           SettingOption(
            title: 'Share link',
            subtitle: '',
            onTap: () {
              
            },
            icon: Icon(Icons.share),
            image: Image.asset('assets/images/img2.jpg'),
            
          ),
          // Account
          SettingOption(
            title: 'Abin',
            subtitle: '+91 8330863172',
            onTap: () {
            
            },
            icon: Icon(Icons.person),

          ),

           SettingOption(
            title: 'Amal',
            subtitle: '+91 8330863172',
            onTap: () {
            
            },
            icon: Icon(Icons.person),

          ),
           SettingOption(
            title: 'Anandhu',
            subtitle: '+91 8330863172',
            onTap: () {
            
            },
            icon: Icon(Icons.person),

          ),
           SettingOption(
            title: 'Anasooya',
            subtitle: '+91 8330863172',
            onTap: () {
            
            },
            icon: Icon(Icons.person),

          ),
           SettingOption(
            title: 'Angel',
            subtitle: '+91 8330863172',
            onTap: () {
            
            },
            icon: Icon(Icons.person),

          ),
           SettingOption(
            title: 'kailas',
            subtitle: '+91 8330863172',
            onTap: () {
            
            },
            icon: Icon(Icons.person),

          ),
           SettingOption(
            title: 'Lakshmi',
            subtitle: '+91 8330863172',
            onTap: () {
            
            },
            icon: Icon(Icons.person),

          ),
           SettingOption(
            title: 'Vino',
            subtitle: '+91 8330863172',
            onTap: () {
            
            },
            icon: Icon(Icons.person),
            

          ),
          
        ],
      ),
    );
  }
}