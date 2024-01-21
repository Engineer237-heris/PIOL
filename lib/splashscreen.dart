import 'dart:async';
import 'package:flutter/material.dart';
import 'package:piolapp/utils.dart';
class Splashscreen extends  StatelessWidget
{
  const Splashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3), () {
       Navigator.of(context).pushNamed('/signIn');
     });
     if(isAndroid || isIOS)
     {
       return 
        Scaffold(
          backgroundColor: Colors.brown,
          body:Center(
            child:Hero(tag: 'logo-app', child: Image.asset('assets/images/logo-white.png',
            height: MediaQuery.of (context).size.height/3,
            width: MediaQuery.of(context).size.width/3))
          )
        );
     }
     
    return 
    Scaffold(
      backgroundColor: Colors.brown,
      body:Center(
        child:Hero(tag: 'logo-app', child: Image.asset('assets/images/logo-white.png',
        height: MediaQuery.of(context).size.height/8,
        width: MediaQuery.of(context).size.width/8))
      )
    );
  }

}