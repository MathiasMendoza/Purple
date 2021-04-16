import 'package:flutter/material.dart';


class CallCard{
  String username, pic, time;
  bool isMissed, isAccepted, isCall, isVideoCall;

  CallCard({this.username, this.pic, this.time, this.isMissed, this.isAccepted, this.isCall, this.isVideoCall});
}