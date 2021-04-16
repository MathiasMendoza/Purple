import 'package:flutter/material.dart';
import 'package:purple/calls_model.dart';

class CallsPage extends StatefulWidget {
  @override
  _CallsPageState createState() => _CallsPageState();
}

class _CallsPageState extends State<CallsPage> {

  List<CallCard> calls_list = [
    CallCard(
      username: 'Cecilia Vargas',
      pic: 'assets/users/perfilCeci.jpg',
      time: 'Today, 22:04',
      isMissed: false,
      isAccepted: true,
      isCall: true,
      isVideoCall: false
    ),
    CallCard(
        username: 'Bill Gates',
        pic: 'assets/users/perfilBill.jpg',
        time: 'Today, 22:00',
        isMissed: false,
        isAccepted: true,
        isCall: false,
        isVideoCall: true
    ),
    CallCard(
        username: 'Bernie Sanders',
        pic: 'assets/status/bernieStatus.jpg',
        time: 'Today, 21:55',
        isMissed: true,
        isAccepted: false,
        isCall: false,
        isVideoCall: true,
    ),
    CallCard(
        username: 'Albert Einstein',
        pic: 'assets/users/perfilEinstein.jpg',
        time: 'Past, 21:50',
        isMissed: false,
        isAccepted: true,
        isCall: true,
        isVideoCall: false
    ),
    CallCard(
        username: 'Jim Bridenstain',
        pic: 'assets/users/perfilJim.jpg',
        time: 'Today, 21:43',
        isMissed: false,
        isAccepted: true,
        isCall: true,
        isVideoCall: false
    ),
    CallCard(
        username: 'Bruce Lee',
        pic: 'assets/status/bruceStatus.jpg',
        time: 'Today, 21:35',
        isMissed: true,
        isAccepted: false,
        isCall: false,
        isVideoCall: true
    ),
    CallCard(
        username: 'Elon Musk',
        pic: 'assets/status/elonStatus.png',
        time: 'Today, 21:00',
        isMissed: false,
        isAccepted: true,
        isCall: true,
        isVideoCall: false
    ),
    CallCard(
        username: 'Mark Zuckerberg',
        pic: 'assets/status/markStatus.jpg',
        time: 'Today, 14:04',
        isMissed: false,
        isAccepted: true,
        isCall: false,
        isVideoCall: true,
    ),
    CallCard(
        username: 'Dwayne Johnson',
        pic: 'assets/status/rockStatus.jpg',
        time: 'Today, 14:04',
        isMissed: false,
        isAccepted: true,
        isCall: true,
        isVideoCall: false
    ),
    CallCard(
        username: 'Jeff Bezos',
        pic: 'assets/status/jeffStatus.png',
        time: 'Today, 14:04',
        isMissed: false,
        isAccepted: false,
        isCall: true,
        isVideoCall: false
    ),
    CallCard(
        username: 'Cecilia Vargas',
        pic: 'assets/users/perfilCeci.jpg',
        time: 'Today, 22:04',
        isMissed: false,
        isAccepted: true,
        isCall: true,
        isVideoCall: false
    ),
    CallCard(
        username: 'Bill Gates',
        pic: 'assets/users/perfilBill.jpg',
        time: 'Today, 22:00',
        isMissed: false,
        isAccepted: true,
        isCall: false,
        isVideoCall: true
    ),
    CallCard(
      username: 'Bernie Sanders',
      pic: 'assets/status/bernieStatus.jpg',
      time: 'Today, 21:55',
      isMissed: true,
      isAccepted: false,
      isCall: false,
      isVideoCall: true,
    ),
    CallCard(
        username: 'Albert Einstein',
        pic: 'assets/users/perfilEinstein.jpg',
        time: 'Past, 21:50',
        isMissed: false,
        isAccepted: true,
        isCall: true,
        isVideoCall: false
    ),
    CallCard(
        username: 'Albert Einstein',
        pic: 'assets/users/perfilEinstein.jpg',
        time: 'Past, 21:50',
        isMissed: true,
        isAccepted: false,
        isCall: true,
        isVideoCall: false
    ),
    CallCard(
        username: 'Jim Bridenstain',
        pic: 'assets/users/perfilJim.jpg',
        time: 'Today, 21:43',
        isMissed: false,
        isAccepted: true,
        isCall: true,
        isVideoCall: false
    ),
    CallCard(
        username: 'Bruce Lee',
        pic: 'assets/status/bruceStatus.jpg',
        time: 'Today, 21:35',
        isMissed: true,
        isAccepted: false,
        isCall: false,
        isVideoCall: true
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 0),
          child: ListView.builder(
            itemCount: calls_list.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                    child: Row(
                      children: <Widget>[
                        ClipOval(
                          child: Image.asset(
                            calls_list[index].pic,
                            width: 50,
                            height: 50,
                          ),
                        ),
                        SizedBox(width: 12),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              calls_list[index].username,
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                  fontFamily: 'Montserrat'
                              ),
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 2),
                                  child: Transform.rotate(
                                    angle: calls_list[index].isAccepted ? 5.5 : 2.5,
                                    child: Icon(
                                      Icons.arrow_forward_rounded,
                                      color: calls_list[index].isAccepted ? Colors.green : Colors.red,
                                      size: 16,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 2),
                                Text(
                                  calls_list[index].time,
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.white,
                                      fontFamily: 'Montserrat'
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Expanded(
                          child: SizedBox(width: double.infinity),
                        ),
                        Icon(
                          calls_list[index].isCall ? Icons.call : Icons.video_call,
                          color: Colors.green,
                        )
                      ],
                    ),
                  ),
                  Divider(
                    height: 0,
                    thickness: 0.2,
                    color: Colors.grey,
                    indent: 75,
                    endIndent: 35,
                  )
                ],
              );
            },
          ),
        )
      ),
      floatingActionButton: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            width: 45,
            height: 45,
            child: FloatingActionButton(
              onPressed: () {},
              backgroundColor: Colors.grey[700],
              child: Icon(
                Icons.video_call
              ),
              elevation: 12.0,
            ),
          ),
          SizedBox(height: 12),
          Container(
            width: 54,
            height: 54,
            child: FloatingActionButton(
              onPressed: () {},
              backgroundColor: Colors.green,
              child: Icon(
                Icons.call,
              ),
              elevation: 12.0,
            ),
          ),
        ],
      ),
    );
  }
}
