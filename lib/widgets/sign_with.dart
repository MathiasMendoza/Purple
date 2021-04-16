import 'package:flutter/material.dart';
import 'package:purple/backend/auth.dart';
import 'package:purple/screens/chats_page.dart';

// ignore: non_constant_identifier_names
Widget SignInWith(context, user, image, text, bgColor, width, txtColor, route) {
  TextStyle style = TextStyle(fontSize: 18, fontFamily: 'Montserrat', fontWeight: FontWeight.bold);
  
  return SizedBox(
    height: 50,
    width: width,
    child: RaisedButton(
      elevation: 5.0,
      onPressed: () {
        signInWithGoogle().then((user) => {
          print(user.displayName),
          Navigator.push(context, MaterialPageRoute(builder: (context) => ChatsPage(user)))
        });
      },
      color: bgColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(image, height: 25.0,),
          SizedBox(width: 10),
          Text(
            text,
            style: style.copyWith(color: txtColor),
          )
        ],
      ),
    ),
  );
}