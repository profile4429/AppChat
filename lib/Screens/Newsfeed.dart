import 'package:app_chat/helper/constant.dart';
import 'package:flutter/material.dart';

class Newsfeed extends StatefulWidget {
  @override
  _NewsfeedState createState() => _NewsfeedState();
}

class _NewsfeedState extends State<Newsfeed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Newsfeed')),
        body: Container(
          padding: const EdgeInsets.fromLTRB(12.0, 8.0, 12.0, 0.0),
          color: Colors.white,
          height: 300.0,
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 20.0,
                    backgroundColor: Colors.orangeAccent,
                    backgroundImage: AssetImage('images/uit.png'),
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration.collapsed(
                        hintText: "What do you think?",
                      ),
                    ),
                  )
                ],
              ),
              const Divider(height: 10.0, thickness: 0.5),
              Container(
                  height: 40.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FlatButton.icon(
                          onPressed: () => print("Hi"),
                          icon: const Icon(Icons.videocam, color: Colors.red),
                          label: Text('Live')),
                      const VerticalDivider(width: 8.0),
                      FlatButton.icon(
                          onPressed: () => print("Hi"),
                          icon: const Icon(Icons.photo_library,
                              color: Colors.green),
                          label: Text('Photo')),
                      const VerticalDivider(width: 8.0),
                      FlatButton.icon(
                          onPressed: () => print("Hi"),
                          icon: const Icon(Icons.video_call,
                              color: Colors.purpleAccent),
                          label: Text('Room')),
                      const VerticalDivider(width: 8.0),
                    ],
                  )),
              const Divider(height: 40.0, thickness: 0.5),
              Row(
                children: [
                  CircleAvatar(
                    radius: 20.0,
                    backgroundColor: Colors.orangeAccent,
                    backgroundImage: AssetImage('images/uit.png'),
                  ),
                  const SizedBox(
                    width: 8.0,
                  ),
                  Column(
                    children: [
                      Text("Nguyen Xuan Son",style: TextStyle(fontSize: 15.0 , color: Colors.black),),
                      Row(
                        children: [
                          Text("3 hour ~ ",style: TextStyle(fontSize: 12.0 , color: Colors.black),),
                          Icon(Icons.public,color: Colors.grey[600],size: 12.0,)
                        ],
                      )
                    ],
                  ),
                   IconButton(onPressed : null,icon: const Icon(Icons.more_horiz))
                ],
              ),
            ],
          ),
        ));
  }
}
