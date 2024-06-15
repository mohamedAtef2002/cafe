import 'dart:async';

import 'package:coffie_shop/sign/welcome.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState(){
    super.initState();
    Timer(Duration( seconds: 3), () {
      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => Welcome()),
              (Route<dynamic> route) => false);
    });

  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        height: double.infinity,
        width: double.infinity,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "welcome",
              style: GoogleFonts.playball(
                  fontSize: 65,
                  color: Colors.white,
                  fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w600
              ),
            )
          ],
        ),
      ),
    );
  }
}


