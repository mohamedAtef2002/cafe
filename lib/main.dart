import 'package:coffie_shop/Add_chart.dart';
import 'package:coffie_shop/Classs/item.dart';
import 'package:coffie_shop/chart.dart';
import 'package:coffie_shop/home.dart';
import 'package:coffie_shop/profile.dart';
import 'package:coffie_shop/sign/homeScreen.dart';
import 'package:coffie_shop/sign/login.dart';
import 'package:coffie_shop/sign/signup.dart';
import 'package:coffie_shop/sign/welcome.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      routes: {
        'welcome' :(context) => Welcome(),
        'Login' :(context) => Login(),
        'Signup' :(context) => Signup(),
        'home' :(context) => Home(),
        'add_to_chart' :(context) => Add_chart(Item[1]),
        'chart' : (context) => Chart(),
        'profile' : (context) => Profile(),
      },

    );
  }
}

