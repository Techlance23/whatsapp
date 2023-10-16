import 'package:flutter/material.dart';

class NewCommunityWidget extends StatefulWidget {
  const NewCommunityWidget({Key? key}) : super(key: key);

  @override
  State<NewCommunityWidget> createState() => _NewCommunityWidgetState();
}

class _NewCommunityWidgetState extends State<NewCommunityWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black38,
      ),
      backgroundColor: Colors.white12,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[

          Image.network(
            'https://s3.india.com/wp-content/uploads/2022/10/QT-WhatsApp-1.jpg',
            fit: BoxFit.cover,
            height: 250,
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Create a New Community',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 15),
                // Add spacing between heading and paragraph
                Text(
                  'Bring together a neighbourhood, school, or more. Create topic-based groups for members, and easily send them admin announcements.',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white38,
                  ),
                ),
              ],
            ),
          ),
          // Spacer to push the button to the bottom
          Spacer(),
          // Button
          Padding(
            padding: EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: () {
                // Handle button click
              },
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green)),
              child: Text('Get started'),
            ),
          ),
        ],
      ),
    );
  }
}
