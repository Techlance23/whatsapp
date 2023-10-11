import 'package:flutter/material.dart';

class ChatSettings extends StatefulWidget {
  const ChatSettings({super.key});

  @override
  State<ChatSettings> createState() => _ChatSettingsState();
}

class _ChatSettingsState extends State<ChatSettings> {
  bool isSwitched = false; 
  var textValue = 'Switch is OFF';  



  void toggleSwitch(bool value) {  
  
    if(isSwitched == false)  
    {  
      setState(() {  
        isSwitched = true;  
        textValue = 'Switch Button is ON';  
      });  
      print('Switch Button is ON');  
    }  
    else  
    {  
      setState(() {  
        isSwitched = false;  
        textValue = 'Switch Button is OFF';  
      });  
      print('Switch Button is OFF');  
    }  
  }   
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
                  children: [
            AppBar(
              title: Text("Chats"),
              backgroundColor: Colors.green,
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: Container(
                height: 33,
                width: MediaQuery.of(context).size.width,
                child: Text(
                  "Display",
                  style: TextStyle(color: Colors.grey,
                  fontWeight: FontWeight.bold),
                ),
              ),
            ),
          
            ListTile(
              title: Text("Theme",
              style: TextStyle(fontWeight: FontWeight.w500),),
              subtitle: Text("System default"),
              leading: Icon(Icons.brightness_7_outlined),
            ),
          
            ListTile(
              title: Text("Wallpaper",style: TextStyle(fontWeight: FontWeight.w500),),
              
              
              leading: Icon(Icons.image),
            ),


             Divider(
              height: 20,
              thickness: 1,
              indent: 4,
              color: Colors.grey[100],
            ),
          
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 15, 0, 0),
              child: Container(
                height: 33,
                width: MediaQuery.of(context).size.width,
                child: Text(
                  "Chat settings",
                  style: TextStyle(color: Colors.grey,
                  fontWeight: FontWeight.bold),
                ),
              ),
            ),

           
          
             Column(
               children: [
                 ListTile(
                  title: Text("Enter is send",
                  style: TextStyle(fontWeight: FontWeight.w500),),
                  subtitle: Text("System default"),
                  trailing: Switch(onChanged: toggleSwitch,  
                    value: isSwitched,  
                    activeColor: Colors.green,  
                    activeTrackColor: Colors.green,  
                    inactiveThumbColor: Colors.grey,  
                    inactiveTrackColor: Colors.grey,  ),
            ),
              
          
            ListTile(
              title: Text("Media visibility",
              style: TextStyle(fontWeight: FontWeight.w500),),
              subtitle: Text("System default"),
              trailing: Switch(onChanged: toggleSwitch,  
                value: isSwitched,  
                activeColor: Colors.green,  
                activeTrackColor: Colors.green,  
                inactiveThumbColor: Colors.grey,  
                inactiveTrackColor: Colors.grey,  ),
            ),


             ListTile(
              title: Text("Instant video message",
              style: TextStyle(fontWeight: FontWeight.w500),),
              subtitle: Text("System default"),
              trailing: Switch(onChanged: toggleSwitch,  
                value: isSwitched,  
                activeColor: Colors.green,  
                activeTrackColor: Colors.green,  
                inactiveThumbColor: Colors.grey,  
                inactiveTrackColor: Colors.grey,  ),
            ),

            ListTile(
              title: Text("Font size",
              style: TextStyle(fontWeight: FontWeight.w500),),
              subtitle: Text("System default"),
              
            ),

             Divider(
              height: 20,
              thickness: 1,
              indent: 4,
              color: Colors.grey[100],
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(20, 15, 0, 0),
              child: Container(
                height: 33,
                width: MediaQuery.of(context).size.width,
                child: Text(
                  "Archieved chats",
                  style: TextStyle(color: Colors.grey,
                  fontWeight: FontWeight.bold),
                ),
              ),
            ),

            ListTile(
              title: Text("Keep chats archieved",
              style: TextStyle(fontWeight: FontWeight.w500),),
              subtitle: Text("System default"),
              trailing: Switch(onChanged: toggleSwitch,  
                value: isSwitched,  
                activeColor: Colors.green,  
                activeTrackColor: Colors.green,  
                inactiveThumbColor: Colors.grey,  
                inactiveTrackColor: Colors.grey,  ),
            ),




            

             ],
             ),
          
                  
                  ],
                ),
          )),
    );
  }
}
