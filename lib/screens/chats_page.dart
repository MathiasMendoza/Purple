import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:purple/posts_model.dart';

// ignore: non_constant_identifier_names
List<Posts> posts_list = [
  Posts(
      name: 'Cecilia Vargas',
      username: '@ceciv25',
      pic: 'assets/users/perfilCeci.jpg',
      content: 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.',
      time: '2hrs ago'
  ),
  Posts(
      name: 'Bill Gates',
      username: '@billgates',
      pic: 'assets/users/perfilBill.jpg',
      content: "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here'",
      time: '3hrs ago'
  ),
  Posts(
      name: 'Albert Einstein',
      username: '@alberteinstein',
      pic: 'assets/users/perfilEinstein.jpg',
      content: "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.",
      time: '23min ago'
  ),
  Posts(
      name: 'Jim Bridenstine',
      username: '@jimbridenstine',
      pic: 'assets/users/perfilJim.jpg',
      content: 'It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.',
      time: '1hr ago'
  ),
  Posts(
      name: 'Bill Gates',
      username: '@billgates',
      pic: 'assets/users/perfilBill.jpg',
      content: "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here'",
      time: '3hrs ago'
  ),
  Posts(
      name: 'Mark Zuckerberg',
      username: '@markzuckerberg',
      pic: 'assets/status/markStatus.jpg',
      content: 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.',
      time: '2hrs ago'
  ),
  Posts(
      name: 'Dwayne Johnson',
      username: '@dwaynejohnson',
      pic: 'assets/status/rockStatus.jpg',
      content: 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.',
      time: '2hrs ago'
  ),
  Posts(
      name: 'Albert Einstein',
      username: '@alberteinstein',
      pic: 'assets/users/perfilEinstein.jpg',
      content: "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.",
      time: '23min ago'
  ),
  Posts(
      name: 'Jim Bridenstine',
      username: '@jimbridenstine',
      pic: 'assets/users/perfilJim.jpg',
      content: 'It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.',
      time: '1hr ago'
  ),
];


class ChatsPage extends StatefulWidget {
  final FirebaseUser user;
  ChatsPage(this.user);

  @override
  _ChatsPageState createState() => _ChatsPageState();
}

class _ChatsPageState extends State<ChatsPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [0.3, 0.5, 0.7, 0.9],
                colors: [
                  Colors.purple[900],
                  Colors.purple[900],
                  Colors.purple[700],
                  Colors.purple[700],
                ]
            )
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 1, horizontal: 10),
          child: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: ListView.builder(
              itemCount: posts_list.length,
              itemBuilder: (context, index) {
                return Card(
                  color: Colors.grey[800],
                  child: Padding(
                    padding: EdgeInsets.all(18),
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            ClipOval(
                              child: Image.asset(
                                posts_list[index].pic,
                                width: 45,
                                height: 45,
                              ),
                            ),
                            SizedBox(width: 12),
                            Expanded(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            widget.user.displayName,
                                            style: TextStyle(
                                                fontSize: 17.0,
                                                fontWeight: FontWeight.w600,
                                                fontFamily: 'Montserrat',
                                                color: Colors.white
                                            ),
                                          ),
                                          SizedBox(width: 5),
                                          Icon(
                                            Icons.verified,
                                            size: 16,
                                            color: Colors.white,
                                          )
                                        ],
                                      ),
                                      Text(
                                        posts_list[index].username,
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontFamily: 'Montserrat',
                                          color: Colors.white
                                        ),
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 40),
                                    child: Text(
                                      posts_list[index].time,
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontFamily: 'Montserrat',
                                        color: Colors.white,
                                        fontStyle: FontStyle.italic
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 12),
                        Container(
                          width: double.infinity,
                          child: Text(
                            posts_list[index].content,
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                                fontFamily: 'Montserrat'
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        )
      ),
      floatingActionButton: Container(
        width: 45,
        height: 45,
        child: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.deepPurpleAccent,
          child: Icon(Icons.edit_outlined),
          elevation: 12.0,
        ),
      ),
    );
  }
}
