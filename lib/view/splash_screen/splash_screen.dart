

import 'package:flutter/material.dart';

import '../home_screen/user_name_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Delay for 3 seconds and then navigate to the next page
    Future.delayed(Duration(seconds: 2)).then((value) =>  Navigator.push(context,
        MaterialPageRoute(builder: (context) => UserNameScreen(),
      )),
     
      
    );
  }

  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          height: 56,
          width: 207,
          child: Image.asset("assets/logos_netflix.png"))),
     
      
    );
  }
}