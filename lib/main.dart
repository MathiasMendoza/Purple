import 'package:flutter/material.dart';
import 'package:purple/screens/edit_profile_page.dart';
import 'package:purple/screens/login_page.dart';
import 'package:purple/screens/home_page.dart';
import 'package:purple/screens/init_page.dart';
import 'package:purple/screens/signup_page.dart';
import 'package:purple/screens/chats_page.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/init',
  routes: {
    '/init': (context) => InitPage(),
    '/login': (context) => LoginPage(),
    '/signUp': (context) => SignUpPage(),
    '/home': (context) => HomePage(),
    '/editProfile': (context) => EditProfilePage(),
  },
));