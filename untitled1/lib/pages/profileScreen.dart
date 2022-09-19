import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.edit_outlined),
        backgroundColor: Color.fromRGBO(68, 10, 103, 1),
        onPressed: () {
          Navigator.pushNamed(context, '/editProfile');
        },
      ),
      body: ListView(children: [
        Text("Profile")
        ]),
    );
  }
}
