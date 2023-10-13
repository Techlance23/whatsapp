import 'package:flutter/material.dart';

class MyQR extends StatelessWidget {
  const MyQR({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(child: Column(

  
      children: [

        SizedBox(
          height: 150,
        ),

        CircleAvatar(
          radius: 20,
         
        ),

        SizedBox(
          height: 20,
        ),


       Container(
        height: 280,
        width: 240,

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color.fromARGB(255, 235, 235, 235),
        ),
        
        

        child: Column(
          children: [
            SizedBox(height: 20,),
            Text("Scan QR", style: TextStyle(
              color: Color.fromARGB(255, 150, 150, 150)
            ),),
            SizedBox(height: 20,),
            Image.asset("assets/images/qr.png",height: 200
            ,)
          ],
        ),

      ),

       SizedBox(height: 30,),

      Text("Scan the Qr code for the access profile")



    ]),);
  }
}