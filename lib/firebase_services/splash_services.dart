import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:login_signup_app/ui/home_screen/home_screen.dart';
import '../ui/auth/login_screen.dart';

class SplashServices {
  void isLogin(BuildContext context) {
    final FirebaseAuth _auth = FirebaseAuth.instance;

    // final user = _auth.currentUser;

    // if (user != null) {
    //   Timer(Duration(seconds: 3), () {
    //     Navigator.pushReplacement(context,
    //         MaterialPageRoute(builder: (context) => const HomeScreen()));
    //   });
    // } else {
    //   Navigator.pushReplacement(context,
    //       MaterialPageRoute(builder: (context) => const LoginScreen()));
    // }

    FirebaseAuth.instance.userChanges().listen((User? user) {
      if (user == null) {
        Timer(Duration(seconds: 2), () {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => const LoginScreen()));
        });
        // print('User is currently signed out!');
      } else {
        Timer(Duration(seconds: 2), () {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) =>  HomeScreen()));
        });
        // print('User is signed in!');
      }
    });
  }
}
