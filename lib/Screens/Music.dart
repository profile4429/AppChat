import 'package:flutter/material.dart';

class Music extends StatefulWidget{
  @override
  _MusicState createState() => _MusicState();

}
class _MusicState extends State<Music>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text('Music')),
      body: Center(
        child: Text('Music Screen',style: TextStyle(fontSize: 40),),
      ),
    );
  }
}