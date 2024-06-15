import 'package:coffie_shop/Classs/Button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            SizedBox(height: 80,),
              Image(image: AssetImage("assets/images/1.png")),
            SizedBox(
              height: 50,
            ),
            Text("TAKE REST AND BE HAPPY",
              style: GoogleFonts.playball(
                fontSize: 25,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              )),
            SizedBox(height: 70,),
            Button(text: 'Login',
                onPressed: (){ Navigator.of(context).pushNamed('Login'); },
                textColor: Colors.white,
                bgColor: Color(0xffB14130)),
            SizedBox(height: 25,),
            Button(text: 'Signup',
                onPressed: (){Navigator.of(context).pushNamed('Signup');},
                textColor: Colors.white,
                bgColor: Color(0xffB14130))
          ],
        ),
      ),
    );

  }
}
