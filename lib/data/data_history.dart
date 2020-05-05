import 'package:flutter/material.dart';

class Doodle{

  final String name;
  final String time;
  final String content;
  final Icon icon;
  final Color iconBackground;

  const Doodle(
    {
      this.name,
      this.time,
      this.content,
      this.icon,
      this.iconBackground,
    }
  );
}

const List<Doodle> doodle = [
    Doodle(
      name: "Lahir",
      time: "6 Januari 2001",
      icon: Icon(Icons.turned_in),
      iconBackground: Colors.white
    ),
    Doodle(
      name: "SD",
      time: "2008-2013",
      icon: Icon(Icons.book),
      iconBackground: Colors.red
    ),
    Doodle(
      name: "SMP",
      time: "2013-2016",
      icon: Icon(Icons.book),
      iconBackground: Colors.blue
    ),
    Doodle(
      name: "SMA",
      time: "2016-2-19",
      icon: Icon(Icons.book),
      iconBackground: Colors.grey
    ),
  ];