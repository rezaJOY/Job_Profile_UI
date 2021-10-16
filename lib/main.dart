import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:profile/home.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent)
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xff01b2b8),
        accentColor: Color(0xffFFD409),
      ),
     // home: HomePage(),
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {    //duration of splash screen and auto execute
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 2), ()
    {
      Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
    }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(

          child: Column(

            children: [
              SizedBox(
                height: 100,
              ),

             Image.asset('assets/images/splash.png', height: 400,),
              SizedBox(height: 5),
              CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Color(0xff01b2b8)),
              )

            ],
          ),
        ),
      ),
    );
  }
}

