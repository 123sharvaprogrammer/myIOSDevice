// @dart=2.9
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:splashscreen/splashscreen.dart';
import 'home.dart';
import './guestPage.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Splash2()
    );
  }
}
class Splash2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 1,
      navigateAfterSeconds: new SecondScreen(),
      title: new Text('Seminarroom',textScaleFactor: 2,),
      image: new Image.asset('assets/app_logo.png', width: 100,),
      photoSize: 100.0,
      loaderColor: Color.fromRGBO(68, 10, 103, 1),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Sora-medium'),
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 70,
          backgroundColor: Color.fromRGBO(250,250,250, 1),
          elevation: 0,
          title:             Container(
            child: Row(mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image(image: AssetImage('assets/app_logo.png'), height: 50,)
              ],
            ),
            margin: EdgeInsets.only(top: 20, right: 20),
          ),
        ),
        body: Column(
          children: [
            Column(
              children: [
                SizedBox(height:MediaQuery.of(context).size.height /15),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    child: Text('What is Seminarroom', style: TextStyle(color: Color.fromRGBO(68, 10, 103, 1)),
                      textAlign:TextAlign.left,
                      textScaleFactor: 3.4,
                  ),
                    margin: EdgeInsets.only(left: 24),
                  ),
                )
              ],
            ),
            SizedBox(height: 23),
            Container(
              child: Text('Making students love their subjects is the first step in creating academic excellence.', style: TextStyle(fontFamily: 'Sora-medium'), textScaleFactor: 1.3, textAlign: TextAlign.left,),
            margin: EdgeInsets.only(left: 24),
            ),
            SizedBox(height: 40),
            Image(image: AssetImage('assets/tao.png'), width: MediaQuery.of(context).size.width),
            SizedBox(height: 93),
            Container(
              child: TextButton(onPressed: () {
                Navigator.pushNamed(context, '/guestPage');
                _loginOrSignup(context);
              }, child: Text('Explore More', style: TextStyle(color: Colors.white, fontFamily: 'Sora-Bold'), textScaleFactor: 1.2,), style: TextButton.styleFrom(
          fixedSize: Size(150, 50),
                backgroundColor: Color.fromRGBO(68, 10, 103, 1),
              ),),
            )
          ],
        )
      ),
    );
  }
}
void _loginOrSignup(context){
  showModalBottomSheet(context: context, builder: (BuildContext bc){
    return ClipRRect(
      child: Container(height: MediaQuery.of(context).size.height / 3.6, child: Column(
        children: [
          SizedBox(height: 20),
          ElevatedButton(onPressed: () {}, child: Text('Register', textScaleFactor: 1.4,), style: TextButton.styleFrom(
            backgroundColor: Color.fromRGBO(144,57,149, 1),
            minimumSize: Size(150, 50)
          ),),
          SizedBox(height: 20),
               Container(
                 child: Row(
              children: [
                  Align(child: Text('Already registered?'),),
                  GestureDetector(child: Text('Login', style: TextStyle(decoration: TextDecoration.underline, color: Colors.black),), onTap: () {print('asdf');},)
              ],
            ),
                 margin: EdgeInsets.only(left: MediaQuery.of(context).size.width /3.8),
               ),
          SizedBox(height: 20),
          Center(child: ClipRRect(child: Container(child: Padding(child: Text('We inspire students of higher education through our', textAlign: TextAlign.center,), padding: EdgeInsets.all(4),), margin: EdgeInsets.only(left: 12, right: 12), color: Colors.grey[300],), borderRadius: BorderRadius.circular(100)))
        ],
      ),
      color: Colors.transparent,
      ),
      borderRadius: BorderRadius.only(topLeft: Radius.circular(12)),
    );
  });
}