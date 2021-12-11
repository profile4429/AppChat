import 'package:flutter/material.dart';
import 'package:app_chat/widgets.dart';
import 'package:app_chat/services/database.dart';
import 'package:firebase_database/firebase_database.dart';
class Profile extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _profileState();
}
  class _profileState extends State<Profile>{
  late final dref = FirebaseDatabase.instance.reference();
  late DatabaseReference databaseReference;

    TextEditingController userNameTextEditingController = new TextEditingController();
    TextEditingController fullNameTextEditingController = new TextEditingController();
    TextEditingController emailTextEditingController = new TextEditingController();


  Widget textfield({@required hintText}) {
    return Material(
      elevation: 4,
      shadowColor: Colors.grey,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(
              letterSpacing: 2,
              color: Colors.black54,
              fontWeight: FontWeight.bold,
            ),
            fillColor: Colors.white30,
            filled: true,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide.none)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xff555555),
      ),
      body:SingleChildScrollView(
      child :
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                    width: MediaQuery.of(context).size.width / 3,
                    height: MediaQuery.of(context).size.width / 3,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 1),
                      shape: BoxShape.circle,
                      color: Colors.white,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('images/profile.png'),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(180.0, 100.0, 0.0, 0.0),
                child: CircleAvatar(
                  backgroundColor: Colors.black54,
                  child: IconButton(
                    icon: Icon(
                      Icons.edit,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                ),
              )
            ],
          ),
       Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height: 400,
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  textfield(
                    hintText: "Username",
                  ),
                  textfield(
                    hintText: "Fullname",
                  ),
                  TextFormField(
                    controller : emailTextEditingController,
                    decoration: textFieldInputDecoration("email"),
                  ),
                  textfield(
                    hintText: "Password",
                  ),
                  textfield(
                    hintText: "Confirm Password",
                  ),
                  Container(
                    height: 45,
                    width: double.infinity,
                    child: RaisedButton(
                      onPressed: () {

                      },
                      color: Colors.black54,
                      child: Center(
                        child: Text(
                          "Update",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),

        ],
      )
      ),
    );
  }
}



class HeaderCurvedContainer extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = Color(0xff555555);
    Path path = Path()
      ..relativeLineTo(0, 150)
      ..quadraticBezierTo(size.width / 2, 100, size.width, 150)
      ..relativeLineTo(0, -150)
      ..close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
