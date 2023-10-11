import 'package:flutter/material.dart';
import 'package:whatsapp/src/feature/calls/call_first.dart';
import 'package:whatsapp/src/feature/calls/call_list_item_widget.dart';

class callListWidget extends StatelessWidget {
  const callListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Call_frst(icon: Icon(Icons.link,color: Colors.white,),),
        CallListItemWidget(
          title:"Amal",
          image: "https://cdn-icons-png.flaticon.com/512/219/219983.png",
          subTitle: DateTime(2023, 09, 03), 
          
        ),
        CallListItemWidget(
          title:"Rayan",
          image: "https://cdn-icons-png.flaticon.com/512/219/219983.png",
          subTitle: DateTime(2023, 09, 01), 
        ),
        CallListItemWidget(
          title:"Joel",
          image: "https://cdn-icons-png.flaticon.com/512/219/219983.png",
          subTitle: DateTime(2023, 08, 28), 
        ),
        CallListItemWidget(
          title:"Sooraj",
          image: "https://cdn-icons-png.flaticon.com/512/219/219983.png",
          subTitle: DateTime(2023, 08, 26), 
        ),
        CallListItemWidget(
          title:"Samanth",
          image: "https://cdn-icons-png.flaticon.com/512/219/219983.png",
          subTitle: DateTime(2023, 08, 26), 
        ),
        CallListItemWidget(
          title:"Akbar",
          image: "https://cdn-icons-png.flaticon.com/512/219/219983.png",
          subTitle: DateTime(2023, 08, 25), 
        ),
        CallListItemWidget(
          title:"Philip",
          image: "https://cdn-icons-png.flaticon.com/512/219/219983.png",
          subTitle: DateTime(2023, 08, 24), 
        ),
        
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Align(
              alignment: Alignment.bottomRight,
              child: FloatingActionButton(
                backgroundColor: Colors.green,
                elevation: 10,
                child: Icon(Icons.call),
                onPressed: () {
                
                },
              ),
            ),
          ),
        
        

      ],
    );
  }
}



