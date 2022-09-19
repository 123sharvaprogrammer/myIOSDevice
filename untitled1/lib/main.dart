import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Seminarroom',
      routes: {

      },
      home: Scaffold(
        body: SafeArea(child: Align(alignment: Alignment.center, child:CircularProgressIndicator(),)),
      ),
    );
  }
}
