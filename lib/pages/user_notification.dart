import 'package:flutter/material.dart';
import 'package:insta_full_ui/utili/acitivity_page.dart';

class UserNotification extends StatelessWidget {
  const UserNotification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text('Activity',
        style: TextStyle(color: Colors.black,
        fontSize: 25,
        fontWeight: FontWeight.bold),
        ),
      ),
      body: ActivityPage()
    );
  }
}
