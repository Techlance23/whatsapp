import 'package:flutter/material.dart';

class NotificationSettings extends StatefulWidget {
  const NotificationSettings({super.key});

  @override
  State<NotificationSettings> createState() => _NotificatinSettingsState();
}

class _NotificatinSettingsState extends State<NotificationSettings> {

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
        body: SingleChildScrollView(
          child: Column(
              children: [
        
           AppBar(
            leading: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back)),
                title: Text("Notifications"),
                backgroundColor: Colors.green,
              ),
        
               ListTile(
                
                title: Text("Conversation tones",
                style: TextStyle(fontWeight: FontWeight.w500),),
                subtitle: Text("System default"),
                leading: Icon(Icons.brightness_7_outlined),
                trailing: Switch(onChanged: toggleSwitch,  
                    value: isSwitched,  
                    activeColor: Colors.green,  
                    activeTrackColor: Colors.green,  
                    inactiveThumbColor: Colors.grey,  
                    inactiveTrackColor: Colors.grey,  ),
              ),
        
               Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Container(
                  height: 33,
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    "Messages",
                    style: TextStyle(color: Colors.grey,
                    fontWeight: FontWeight.bold),
                  ),
                ),
              ),
        
        
               ListTile(
                title: Text("Notification tone",
                style: TextStyle(fontWeight: FontWeight.w500),),
                subtitle: Text("Default(Edit SFX)"),
                
                
              ),
        
               ListTile(
                title: Text("Vibrate",
                style: TextStyle(fontWeight: FontWeight.w500),),
                subtitle: Text("Default"),
                
                
              ),
        
              ListTile(
                title: Text("Light",
                style: TextStyle(fontWeight: FontWeight.w500),),
                subtitle: Text("White"),
                
                
              ),
        
               ListTile(
                title: Text("Use high priority notifications",
                style: TextStyle(fontWeight: FontWeight.w500),),
                subtitle: Text("Show previews of notification at the of \nthe screen "),
                trailing: Switch(onChanged: toggleSwitch,  
                    value: isSwitched,  
                    activeColor: Colors.green,  
                    activeTrackColor: Colors.green,  
                    inactiveThumbColor: Colors.grey,  
                    inactiveTrackColor: Colors.grey,  ),
                
                
              ),
        
              ListTile(
                title: Text("Reaction notifications",
                style: TextStyle(fontWeight: FontWeight.w500),),
                subtitle: Text("Show of notification for reaction to \nmessage you send "),
                trailing: Switch(onChanged: toggleSwitch,  
                    value: isSwitched,  
                    activeColor: Colors.green,  
                    activeTrackColor: Colors.green,  
                    inactiveThumbColor: Colors.grey,  
                    inactiveTrackColor: Colors.grey,  ),
                
                
              ),

              SizedBox(
                height: 20,
              ),
        
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Container(
                  height: 33,
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    "Groups",
                    style: TextStyle(color: Colors.grey,
                    fontWeight: FontWeight.bold),
                  ),
                ),
              ),
        
        
               ListTile(
                title: Text("Notification tone",
                style: TextStyle(fontWeight: FontWeight.w500),),
                subtitle: Text("Default(Edit SFX)"),
                
                
              ),
        
               ListTile(
                title: Text("Vibrate",
                style: TextStyle(fontWeight: FontWeight.w500),),
                subtitle: Text("Default"),
                
                
              ),
        
              ListTile(
                title: Text("Light",
                style: TextStyle(fontWeight: FontWeight.w500),),
                subtitle: Text("White"),
                
                
              ),
        
               ListTile(
                title: Text("Use high priority notifications",
                style: TextStyle(fontWeight: FontWeight.w500),),
                subtitle: Text("Show previews of notification at the of \nthe screen "),
                trailing: Switch(onChanged: toggleSwitch,  
                    value: isSwitched,  
                    activeColor: Colors.green,  
                    activeTrackColor: Colors.green,  
                    inactiveThumbColor: Colors.grey,  
                    inactiveTrackColor: Colors.grey,  ),
                
                
              ),
        
              ListTile(
                title: Text("Reaction notifications",
                style: TextStyle(fontWeight: FontWeight.w500),),
                subtitle: Text("Show of notification for reaction to \nmessage you send "),
                trailing: Switch(onChanged: toggleSwitch,  
                    value: isSwitched,  
                    activeColor: Colors.green,  
                    activeTrackColor: Colors.green,  
                    inactiveThumbColor: Colors.grey,  
                    inactiveTrackColor: Colors.grey,  ),
                
                
              ),
        
        
        
        
        
              ],
            ),
        ));
  }
}
