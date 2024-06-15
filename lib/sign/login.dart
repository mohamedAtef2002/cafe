import 'package:coffie_shop/sign/loginform.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.only(top: 70 ,left: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Hello",style: GoogleFonts.playball(
                    fontSize: 60,
                    color: Colors.white,
                    fontStyle: FontStyle.italic,
                  ),)
                ],
              ),

              Padding(
                padding: const EdgeInsets.only(top: 50,right: 14),
                child: SingleChildScrollView(
                  child: Container(
                      height: 430,
                      width: 400,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            loginForm(),
                          ],
                        ),
                      )
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
