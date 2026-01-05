import 'package:flutter/material.dart';

import 'package:my_first_app/LoginPage.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{

  const MyApp({super.key});

  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:const LoginPage(),
      theme: ThemeData(
        primaryColor: Colors.pink[300]
      ),
    );
  }
}

