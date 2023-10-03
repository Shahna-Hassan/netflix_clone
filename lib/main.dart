import 'package:flutter/material.dart';
import 'view/splash_screen/splash_screen.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      home: SplashScreen() ,



    );
  }
}