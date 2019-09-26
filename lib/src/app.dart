import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
class App extends StatelessWidget{
  Widget build(context){
    return MaterialApp(
      title: 'this is temp',
      home:Scaffold(
        body: LoginScreen(),
       ),
      );
  }
}