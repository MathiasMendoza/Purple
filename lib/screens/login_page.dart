import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:purple/widgets/sign_with.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:purple/backend/auth.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  FirebaseUser user;

  TextStyle textFieldStyle = TextStyle(fontSize: 8.0, fontFamily: 'Montserrat', fontStyle: FontStyle.italic, color: Colors.white);

  void initState(){
    super.initState();
    signOutGoogle();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.3, 0.7, 0.7, 0.9],
                  colors: [
                    Colors.purple[900],
                    Colors.purple[900],
                    Colors.purple[800],
                    Colors.purple[800]
                  ]
              )
          ),
          child: Padding(
            padding: EdgeInsets.all(36.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    children: <Widget>[
                      SizedBox(
                        height: 170.0,
                        child: Image.asset(
                          'assets/images/purple_logo.png',
                          fit: BoxFit.contain,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 24.0),
                      TextFormField(
                        decoration: new InputDecoration(
                            contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                            labelText: 'Username',
                            labelStyle: textFieldStyle.copyWith(fontSize: 18),
                            fillColor: Colors.white,
                            border: new OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0),
                              borderSide: new BorderSide(
                                  color: Colors.white
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25.0),
                                borderSide: BorderSide(
                                  color: Colors.white,
                                  width: 2.0,
                                )
                            )
                        ),
                        validator: (val){
                          if(val.length == 0){
                            return 'Username cannot be empty';
                          }else{
                            return null;
                          }
                        },
                        keyboardType: TextInputType.text,
                        style: textFieldStyle.copyWith(fontSize: 16),
                      ),
                      SizedBox(height: 18.0),
                      TextFormField(
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                            labelText: 'Password',
                            labelStyle: textFieldStyle.copyWith(fontSize: 18),
                            fillColor: Colors.white,
                            border: new OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0),
                              borderSide: BorderSide(),
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25.0),
                                borderSide: BorderSide(
                                  color: Colors.white,
                                  width: 2.0,
                                )
                            )
                        ),
                        validator: (val){
                          if(val.length == 0){
                            return 'Password cannot be empty';
                          }else{
                            return null;
                          }
                        },
                        keyboardType: TextInputType.visiblePassword,
                        style: textFieldStyle.copyWith(fontSize: 16),
                      ),
                      SizedBox(height: 18.0),
                      Material(
                        elevation: 5.0,
                        borderRadius: BorderRadius.circular(30.0),
                        color: Colors.purpleAccent,
                        child: MaterialButton(
                          height: 15,
                          onPressed: () {
                            Navigator.pushReplacementNamed(context, '/home');
                          },
                          minWidth: MediaQuery.of(context).size.width,
                          child: Text(
                            'Login',
                            textAlign: TextAlign.center,
                            style: textFieldStyle.copyWith(fontWeight: FontWeight.bold, color: Colors.grey[300], fontSize: 18),
                          ),
                        ),
                      ),
                      SizedBox(height: 18.0),
                      Text(
                        '- or -',
                        style: TextStyle(
                          fontSize: 13.0,
                          fontFamily: 'Montserrat',
                          color: Colors.white
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 18.0),
                      SignInWith(context, user, 'assets/images/google-logo.png', 'Sign in with Google', Colors.white, MediaQuery.of(context).size.width, Colors.black, '/chatsPage'),
                      SizedBox(height: 16.0),
                      SignInWith(context, user, 'assets/images/facebook.png', 'Sign in with Facebook', Colors.blue[700], MediaQuery.of(context).size.width, Colors.white, '/chatsPage'),
                      SizedBox(height: 3.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Don't you have an account?",
                            style: TextStyle(
                              fontSize: 13,
                              fontFamily: 'Montserrat',
                              color: Colors.white
                            ),
                          ),
                          FlatButton(
                            onPressed: () {
                              Navigator.pushReplacementNamed(context, '/signUp');
                            },
                            child: Text(
                              'Sign Up',
                              style: TextStyle(
                                fontSize: 13,
                                fontFamily: 'Montserrat',
                                color: Colors.blue,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
