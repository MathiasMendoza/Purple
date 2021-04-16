import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:purple/status_model.dart';


List<Status> status_list = [
  Status(
    username: 'Bill Gates',
    status: 'assets/status/billStatus.jpg',
    time: 'Today, 14:03'
  ),
  Status(
      username: 'Mark Zuckerberg',
      status: 'assets/status/markStatus.jpg',
      time: 'Today, 14:36'
  ),
  Status(
      username: 'Albert Einstein',
      status: 'assets/status/albertStatus.jpg',
      time: 'Today, 15:12'
  ),
  Status(
      username: 'Jeff Bezos',
      status: 'assets/status/jeffStatus.png',
      time: 'Today, 15:34'
  ),
  Status(
      username: 'Bruce Lee',
      status: 'assets/status/bruceStatus.jpg',
      time: 'Today, 15:45'
  ),
  Status(
      username: 'Elon Musk',
      status: 'assets/status/elonStatus.png',
      time: 'Today, 16:23'
  ),
  Status(
      username: 'Dwayne Johnson',
      status: 'assets/status/rockStatus.jpg',
      time: 'Yesterday, 22:54'
  ),
  Status(
      username: 'Bernie Sanders',
      status: 'assets/status/bernieStatus.png',
      time: 'Yesterday, 23:03'
  )
];



class StatusPage extends StatefulWidget {
  @override
  _StatusPageState createState() => _StatusPageState();
}

class _StatusPageState extends State<StatusPage> {
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
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: Column(
            children: <Widget>[
              SizedBox(height: 30),
              Row(
                children: <Widget>[
                  SizedBox(width: 16),
                  Icon(
                    Icons.all_inclusive_outlined,
                    color: Colors.white,
                  ),
                  SizedBox(width: 8),
                  Text(
                    'My Status',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                      fontFamily: 'Montserrat'
                    ),
                  )
                ],
              ),
              SizedBox(height: 12),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: Column(
                  children: [
                    Row(
                      children: <Widget>[
                        ClipOval(
                          child: Image.asset(
                              'assets/users/perfilCeci.jpg',
                            width: 50,
                            height: 50,
                          ),
                        ),
                        SizedBox(width: 12),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Cecilia Vargas',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                  fontFamily: 'Montserrat'
                              ),
                            ),
                            Text(
                              'Today, 14:03',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                  fontFamily: 'Montserrat'
                              ),
                            ),
                          ],
                        ),
                        Expanded(
                          child: SizedBox(width: double.infinity),
                        ),
                        Column(
                          children: [
                            Icon(
                              Icons.remove_red_eye_outlined,
                              color: Colors.white,
                              size: 20,
                            ),
                            Text(
                              '34',
                              style: TextStyle(
                                fontSize: 11,
                                fontFamily: 'Montserrat',
                                color: Colors.white
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 12),
              Row(
                children: <Widget>[
                  SizedBox(width: 16),
                  Icon(
                    Icons.timelapse,
                    color: Colors.white,
                  ),
                  SizedBox(width: 8),
                  Text(
                    'Recent Status',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                        fontFamily: 'Montserrat'
                    ),
                  )
                ],
              ),
              Expanded(
                child: ListView.builder(
                  padding: EdgeInsets.only(top: 0),
                  scrollDirection: Axis.vertical,
                  itemCount: status_list.length,
                  itemBuilder: (context, index){
                    return Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                          child: Row(
                            children: <Widget>[
                              ClipOval(
                                child: Image.asset(
                                  status_list[index].status,
                                  width: 50,
                                  height: 50,
                                ),
                              ),
                              SizedBox(width: 12),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    status_list[index].username,
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white,
                                        fontFamily: 'Montserrat'
                                    ),
                                  ),
                                  Text(
                                    status_list[index].time,
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
                        ),
                        Divider(
                          height: 0,
                          thickness: 0.2,
                          color: Colors.grey,
                          indent: 80,
                          endIndent: 20,
                        )
                      ],
                    );
                  },
                ),
              ),
              SizedBox(height: 15),
              Row(
                children: <Widget>[
                  SizedBox(width: 16),
                  Icon(
                    Icons.remove_red_eye_outlined,
                    color: Colors.white,
                  ),
                  SizedBox(width: 8),
                  Text(
                    'Viewed Status',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                        fontFamily: 'Montserrat'
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    Row(
                      children: <Widget>[
                        ClipOval(
                          child: Image.asset(
                            'assets/status/bernieStatus.jpg',
                            width: 50,
                            height: 50,
                          ),
                        ),
                        SizedBox(width: 12),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Bernie Sanders',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                  fontFamily: 'Montserrat'
                              ),
                            ),
                            Text(
                              'Today, 14:03',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                  fontFamily: 'Montserrat'
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    Divider(
                      height: 0,
                      thickness: 0.2,
                      color: Colors.grey,
                      indent: 60,
                      endIndent: 20,
                    )
                  ],
                ),
              ),

            ],
          ),
        )
      ),
      floatingActionButton: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Container(
            width: 42,
            height: 42,
            child: FloatingActionButton(
              onPressed: () {},
              backgroundColor: Colors.grey,
              child: Icon(Icons.edit, size: 20),
              elevation: 12.0,
            ),
          ),
          SizedBox(height: 10),
          Container(
            width: 54,
            height: 54,
            child: FloatingActionButton(
              onPressed: () {},
              backgroundColor: Colors.green,
              child: Icon(Icons.add_a_photo),
              elevation: 12.0,
            ),
          ),
        ],
      )
    );
  }
}
