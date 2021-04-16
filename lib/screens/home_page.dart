import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:purple/screens/calls_page.dart';
import 'package:purple/screens/camera_page.dart';
import 'package:purple/screens/settings_page.dart';
import 'package:purple/screens/chats_page.dart';
import 'package:purple/screens/status_page.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 1;
  // var array = [
  //   CameraPage(),
  //   ChatsPage(),
  //   StatusPage(),
  //   CallsPage(),
  //   SettingsPage(),
  // ];

  @override
  Widget build(BuildContext context) {
    final FirebaseUser user = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      body: ChatsPage(user),
      bottomNavigationBar: SizedBox(
        height: 60.0,
        child: BottomNavigationBar(
          onTap: onTapTapped,
          currentIndex: currentIndex,
          type: BottomNavigationBarType.fixed,
          fixedColor: Colors.white,
          backgroundColor: Colors.grey[900],
          iconSize: 18,
          unselectedLabelStyle: TextStyle(
            fontSize: 13
          ),
          selectedLabelStyle: TextStyle(
            fontSize: 15
          ),
          unselectedItemColor: Colors.white54,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.camera_alt_outlined), label: 'Camera', activeIcon: Icon(Icons.camera_alt_rounded)),
            BottomNavigationBarItem(icon: Icon(Icons.bubble_chart_outlined), label: 'Purples', activeIcon: Icon(Icons.bubble_chart)),
            BottomNavigationBarItem(icon: Icon(Icons.all_inclusive_outlined), label: 'Status', activeIcon: Icon(Icons.all_inclusive_sharp)),
            BottomNavigationBarItem(icon: Icon(Icons.call_end), label: 'Calls', activeIcon: Icon(Icons.call)),
            BottomNavigationBarItem(icon: Icon(Icons.settings_applications_outlined), label: 'Settings', activeIcon: Icon(Icons.settings_applications)),
          ],
        ),
      ),
    );
  }
  
  void onTapTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }
}
