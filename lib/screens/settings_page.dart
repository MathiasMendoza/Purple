import 'package:flutter/material.dart';


class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: <Widget>[
              RaisedButton(
                highlightColor: Colors.white10,
                color: Colors.purple[900],
                elevation: 0,
                onPressed: (){
                  Navigator.pushNamed(context, '/editProfile');
                },
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 40, 0, 15) ,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        width: 55,
                        height: 55,
                        child: ClipOval(
                          child: Image.asset('assets/users/perfilCeci.jpg'),
                        ),
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Cecilia Vargas',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w600
                            ),
                          ),
                          Text(
                            "'Remember to look up at the stars...",
                            style: TextStyle(
                              color: Colors.grey[400],
                              fontSize: 12.5,
                              fontFamily: 'Montserrat'
                            ),
                          )
                        ],
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Icon(
                              Icons.qr_code,
                              color: Colors.grey[400],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Divider(
                height: 0,
                color: Colors.grey,
                thickness: 0.3,
              ),
              SizedBox(height: 5),
              RaisedButton(
                highlightColor: Colors.white10,
                color: Colors.purple[900],
                elevation: 0,
                onPressed: (){},
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 0),
                  child: Row(
                    children: <Widget>[
                      SizedBox(width: 3),
                      Transform.rotate(
                        angle: 1.5,
                        child: Icon(
                          Icons.vpn_key_rounded,
                          color: Colors.grey[400],
                        ),
                      ),
                      SizedBox(width: 15),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Account',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w600
                            ),
                          ),
                          SizedBox(height: 3),
                          Text(
                            "Privacy, security, change number",
                            style: TextStyle(
                              color: Colors.grey[400],
                              fontSize: 12.5,
                              fontFamily: 'Montserrat'
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              RaisedButton(
                highlightColor: Colors.white10,
                color: Colors.purple[900],
                elevation: 0,
                onPressed: (){},
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 0),
                  child: Row(
                    children: <Widget>[
                      SizedBox(width: 3),
                      Icon(
                        Icons.chat,
                        color: Colors.grey[400],
                      ),
                      SizedBox(width: 15),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Chats',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w600
                            ),
                          ),
                          SizedBox(height: 3),
                          Text(
                            "Theme, wallpapers, chat history",
                            style: TextStyle(
                                color: Colors.grey[400],
                                fontSize: 12.5,
                                fontFamily: 'Montserrat'
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              RaisedButton(
                highlightColor: Colors.white10,
                color: Colors.purple[900],
                elevation: 0,
                onPressed: (){},
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 0),
                  child: Row(
                    children: <Widget>[
                      SizedBox(width: 3),
                      Icon(
                        Icons.notifications_rounded,
                        color: Colors.grey[400],
                      ),
                      SizedBox(width: 15),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Notifications',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w600
                            ),
                          ),
                          SizedBox(height: 3),
                          Text(
                            "Message, group & call tones",
                            style: TextStyle(
                                color: Colors.grey[400],
                                fontSize: 12.5,
                                fontFamily: 'Montserrat'
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              RaisedButton(
                highlightColor: Colors.white10,
                color: Colors.purple[900],
                elevation: 0,
                onPressed: (){},
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 0),
                  child: Row(
                    children: <Widget>[
                      SizedBox(width: 3),
                      Icon(
                        Icons.sd_storage,
                        color: Colors.grey[400],
                      ),
                      SizedBox(width: 15),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Storage and Data',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w600
                            ),
                          ),
                          SizedBox(height: 3),
                          Text(
                            "Network usage, auto-download",
                            style: TextStyle(
                                color: Colors.grey[400],
                                fontSize: 12.5,
                                fontFamily: 'Montserrat'
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              RaisedButton(
                animationDuration: Duration(seconds: 20),
                highlightColor: Colors.white10,
                color: Colors.purple[900],
                elevation: 0,
                onPressed: (){},
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 0),
                  child: Row(
                    children: <Widget>[
                      SizedBox(width: 3),
                      Icon(
                        Icons.help_outline_rounded,
                        color: Colors.grey[400],
                      ),
                      SizedBox(width: 15),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Help',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w600
                            ),
                          ),
                          SizedBox(height: 3),
                          Text(
                            "Help Centre, contact us, privacy policy",
                            style: TextStyle(
                                color: Colors.grey[400],
                                fontSize: 12.5,
                                fontFamily: 'Montserrat'
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 8),
              Divider(
                height: 0,
                color: Colors.grey,
                thickness: 0.25,
                indent: 60,
              ),
              SizedBox(height: 8),
              RaisedButton(
                animationDuration: Duration(seconds: 20),
                highlightColor: Colors.white10,
                color: Colors.purple[900],
                elevation: 0,
                onPressed: (){},
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 0),
                  child: Row(
                    children: <Widget>[
                      SizedBox(width: 3),
                      Icon(
                        Icons.group,
                        color: Colors.grey[400],
                      ),
                      SizedBox(width: 15),
                      Text(
                        'Invite a friend',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w600
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30),
              Center(
                child: Column(
                  children: <Widget>[
                    Text(
                      'Made by',
                      style: TextStyle(
                        fontSize: 11,
                        color: Colors.grey[400],
                        fontFamily: 'Montserrat'
                      ),
                    ),
                    SizedBox(height: 3),
                    Text(
                      'Mathias Mendoza',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Montserrat',
                        fontSize: 13
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
