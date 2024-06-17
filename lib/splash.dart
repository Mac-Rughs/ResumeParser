import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:resume_parser/login.dart';
import 'package:resume_parser/signup.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:resume_parser/profile.dart';

class splash extends StatefulWidget {
  const splash({super.key});

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  void initState() {
    goHome();
    super.initState();
  }

  Future<void> goHome() async {
    await Future.delayed(Duration(milliseconds: 5500));
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    var id = prefs.getString('username');
    var pass = prefs.getString('password');

    if (id != null && pass != null) {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
        return profile();
      }));
    } else {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
        return login();
      }));
    }
  }


  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
        splash: 'assets/animations/splash.gif',
        splashIconSize: 2000,
        centered: true,
        nextScreen: const login(),
        backgroundColor: Colors.white,
        duration: 5000,

      ),
    );
  }
}
