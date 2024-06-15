import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        backgroundColor: Colors.black12,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Container(
              height:40 ,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white12,
              ),
              child: IconButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('home');
                  setState(() {});
                },
                icon: Icon(Icons.arrow_back_ios_new,color: Colors.white,),

              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 100),
              child: Text('Profile',style: GoogleFonts.playball(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold
              ),),
            )
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 25,left: 10),
            child: SizedBox(
              height: 140,
              width: 140,
              child: Stack(
                fit: StackFit.expand,
                children:[
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/images/12.png"),
                  ),
                  Positioned(
                    top: 95,
                    right: -10,
                    bottom: -5,
                    child: TextButton(
                      style: TextButton.styleFrom(
                        primary: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)
                        )
                      ),
                        onPressed: (){},
                        child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                      child: Image(image: AssetImage("assets/images/14.png"),fit: BoxFit.fill,)),),
                      // child: Container(
                      //     height: 30,
                      //     width: 30,
                      //     decoration: BoxDecoration(
                      //       color: Colors.white,
                      //       borderRadius: BorderRadius.circular(100)
                      //     ),
                      //     child: Icon(Icons.camera_alt_outlined,color: Colors.black,)),
                        )
                ],
            ),),
          ),
          SizedBox(height: 60,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 50,
              width: 330,
              child: FilledButton(
                  onPressed: (){},
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.white24,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    )
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.account_circle_outlined,size: 34,color: Colors.white70,),
                      SizedBox(width: 20,),
                      Text('My Account',style: GoogleFonts.roboto(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15
                      ),),
                      SizedBox(width: 128,),
                      Icon(Icons.navigate_next_outlined,color: Colors.white,size: 35,)

                    ],
                  )
              ),
            ),
          ),
          SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 50,
              width: 330,
              child: FilledButton(
                  onPressed: (){},
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.white24,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      )
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.notifications_on_outlined,size: 30,color: Colors.white70,),
                      SizedBox(width: 20,),
                      Text('Notifications',style: GoogleFonts.roboto(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15
                      ),),
                      SizedBox(width: 126,),
                      Icon(Icons.navigate_next_outlined,color: Colors.white,size: 35,)
                    ],
                  )
              ),
            ),
          ),
          SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 50,
              width: 330,
              child: FilledButton(
                  onPressed: (){},
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.white24,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      )
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.settings,size: 30,color: Colors.white70,),
                      SizedBox(width: 20,),
                      Text('Setting',style: GoogleFonts.roboto(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15
                      ),),
                      SizedBox(width: 164,),
                      Icon(Icons.navigate_next_outlined,color: Colors.white,size: 35,)
                    ],
                  )
              ),
            ),
          ),
          SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 50,
              width: 330,
              child: FilledButton(
                  onPressed: (){},
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.white24,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      )
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.help_outline,size: 30,color: Colors.white70,),
                      SizedBox(width: 20,),
                      Text('Help Center',style: GoogleFonts.roboto(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15
                      ),),
                      SizedBox(width: 132,),
                      Icon(Icons.navigate_next_outlined,color: Colors.white,size: 35,)
                    ],
                  )
              ),
            ),
          ),
          SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 50,
              width: 330,
              child: FilledButton(
                  onPressed: (){
                    Navigator.of(context).pushNamed('Login');
                    setState(() {});
                  },
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.white24,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      )
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.logout,size: 30,color: Colors.white70,),
                      SizedBox(width: 20,),
                      Text('Log Out',style: GoogleFonts.roboto(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15
                      ),),
                      SizedBox(width: 160,),
                      Icon(Icons.navigate_next_outlined,color: Colors.white,size: 35,)
                    ],
                  )
              ),
            ),
          ),
        ],
      ),
    );
  }
}
