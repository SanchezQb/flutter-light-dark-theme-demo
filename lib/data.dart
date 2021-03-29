import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListItem {
  String title;
  Widget leading;
  Widget trailing;
  ListItem({
    @required this.title,
    @required this.leading,
    @required this.trailing,
  });
}

List<ListItem> items = [
  ListItem(
    title: "Edit Profile",
    leading: Container(
      padding: EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        color: Colors.green.withOpacity(0.3),
        borderRadius: BorderRadius.circular(7.0),
      ),
      child: Icon(
        Icons.edit,
        color: Colors.green,
      ),
    ),
    trailing: null,
  ),
  ListItem(
    title: "Push Notifications",
    leading: Container(
      padding: EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        color: Colors.orangeAccent.withOpacity(0.3),
        borderRadius: BorderRadius.circular(7.0),
      ),
      child: Icon(
        Icons.notifications,
        color: Colors.orangeAccent,
      ),
    ),
    trailing: Switch.adaptive(
      value: true,
      onChanged: (val) {},
      activeColor: Colors.orangeAccent,
    ),
  ),
  ListItem(
    title: "Sounds",
    leading: Container(
      padding: EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        color: Colors.blue.withOpacity(0.3),
        borderRadius: BorderRadius.circular(7.0),
      ),
      child: Icon(
        CupertinoIcons.speaker_1_fill,
        color: Colors.blue,
      ),
    ),
    trailing: Switch.adaptive(
      value: true,
      onChanged: (val) {},
      activeColor: Colors.blue,
    ),
  )
];
