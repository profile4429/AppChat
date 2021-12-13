import 'package:app_chat/helper/constant.dart';
import 'package:flutter/material.dart';
import 'package:app_chat/services/auth.dart';
import 'package:app_chat/helper/authenticate.dart';
class Setting extends StatefulWidget{
  @override
  _SettingState createState() => _SettingState();

}
class _SettingState extends State<Setting>{
  AuthMethods authMethods = new AuthMethods();
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text('Setting')),
      body: Center(
        child: Column(
          children: [
            RaisedButton(
              onPressed: () {
                authMethods.signOut();
                Navigator.pushReplacement(context, MaterialPageRoute(
                    builder: (context) => Authenticate()
                ));

              },
              color: Colors.grey,
              child: Center(
                child: Text(
                  "Đăng Xuất",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}