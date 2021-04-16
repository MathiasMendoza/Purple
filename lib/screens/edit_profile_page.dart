import 'package:flutter/material.dart';

class EditProfilePage extends StatefulWidget {
  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Montserrat'
          ),
        ),
        toolbarHeight: 53,
        backgroundColor: Colors.grey[800],
        leading: Icon(Icons.arrow_back, color: Colors.white),
        elevation: 12,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [0.3, 0.5, 0.7, 0.9],
                colors: [
                  Colors.purple[900],
                  Colors.purple[900],
                  Colors.purple[900],
                  Colors.purple[900],
                ]
            )
        ),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Container(
                    height: 140,
                    width: 140,
                    child: ClipOval(
                      child: Image.asset('assets/users/perfilCeci.jpg'),
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    child: FloatingActionButton(
                      onPressed: (){},
                      backgroundColor: Colors.green,
                      child: Icon(Icons.camera_alt_rounded, color: Colors.white, size:19),
                    ),
                  )
                ],
              ),
            ),
            RaisedButton(
              highlightColor: Colors.white10,
              color: Colors.purple[900],
              elevation: 0,
              onPressed: (){
                Navigator.pushNamed(context, '/editProfile');
              },
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 7),
                          child: Icon(
                            Icons.person,
                            color: Colors.grey[400],
                          ),
                        ),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Name',
                              style: TextStyle(
                                  color: Colors.grey[400],
                                  fontSize: 12.5,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w600
                              ),
                            ),
                            Text(
                              "Cecilia Vargas",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold
                              ),
                            )
                          ],
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.edit,
                                color: Colors.green,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(width: 28),
                        Text(
                            'This is not your username or pin. This name will\n be visible to your Purple contacts.',
                          style: TextStyle(
                            color: Colors.grey[400],
                            fontSize: 11,
                            fontFamily: 'Montserrat'
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Divider(
              height: 1,
              thickness: 0.1,
              color: Colors.grey[400],
              indent: 65,
            ),
            RaisedButton(
              highlightColor: Colors.white10,
              color: Colors.purple[900],
              elevation: 0,
              onPressed: (){
                Navigator.pushNamed(context, '/editProfile');
              },
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 7),
                          child: Icon(
                            Icons.help_outline_rounded,
                            color: Colors.grey[400],
                          ),
                        ),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Name',
                              style: TextStyle(
                                  color: Colors.grey[400],
                                  fontSize: 12.5,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w600
                              ),
                            ),
                            Text(
                              "Cecilia Vargas",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold
                              ),
                            )
                          ],
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.edit,
                                color: Colors.green,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Divider(
              height: 1,
              thickness: 0.1,
              color: Colors.grey[400],
              indent: 65,
            ),
          ],
        ),
      ),
    );
  }
}
