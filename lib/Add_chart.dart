import 'package:coffie_shop/Classs/item.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Add_chart extends StatefulWidget {
  final Items item;
  Add_chart(Items this.item);

  @override
  State<Add_chart> createState() => _Add_chartState();
}

class _Add_chartState extends State<Add_chart> {
  bool favorute = true;
  bool select = true;
  bool select1 = true;
  bool select2 = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 5),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white12),
                    child: IconButton(
                        color: Colors.white,
                        onPressed: () =>
                            Navigator.of(context).pushNamed("home"),
                        icon: Icon(Icons.arrow_back_ios_new_rounded)),
                  ),
                ),
                SizedBox(
                  width: 250,
                ),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white12),
                  child: IconButton(
                    color: Colors.white,
                    onPressed: () {
                      favorute = !favorute;
                      setState(() {});
                    },
                    icon: favorute == true
                        ? Icon(Icons.favorite_border)
                        : Icon(
                            Icons.favorite,
                            color: Colors.white,
                          ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 20),
            child: Container(
              // height: 350,
              // width: 300,
              decoration: BoxDecoration(
                  color: Colors.white12,
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image(
                        image: AssetImage(widget.item.image),
                        alignment: Alignment(200, 280),
                      )),
                  SizedBox(
                    height: 14.9,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text(
                          widget.item.name,
                          style: TextStyle(fontSize: 22, color: Colors.white),
                        ),
                        SizedBox(
                          width: 79,
                        ),
                        Icon(Icons.star, color: Colors.orange),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          '${widget.item.rate}',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.all(9.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Description",
                  style: GoogleFonts.playball(
                      fontSize: 20,
                      color: Colors.grey,
                      fontWeight: FontWeight.w900),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "A cappuccino is the perfect balance of espresso, steamed milk and foam. "
                  "This coffee is all about the structure and the even splitting of all elements into equal thirds. ",
                  style: TextStyle(color: Colors.white70, fontSize: 15),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Size",
                    style: GoogleFonts.roboto(
                        fontSize: 26,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 90,
                        height: 35,
                        child: ElevatedButton(
                          onPressed: () {
                            select = !select;
                            select1 = select2 = true;
                            setState(() {});
                          },
                          style: ElevatedButton.styleFrom(
                            primary: select == true
                                ? Colors.white12
                                : Color(0xffB14130),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Text(
                            "S",
                            style: GoogleFonts.roboto(
                                fontSize: 26,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      SizedBox(
                        width: 90,
                        height: 35,
                        child: ElevatedButton(
                          onPressed: () {
                            select1 = !select1;
                            select2 = select = true;
                            setState(() {});
                          },
                          style: ElevatedButton.styleFrom(
                            primary: select1 == true
                                ? Colors.white12
                                : Color(0xffB14130),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Text(
                            "L",
                            style: GoogleFonts.roboto(
                                fontSize: 26,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      SizedBox(
                        width: 90,
                        height: 35,
                        child: ElevatedButton(
                          onPressed: () {
                            select2 = !select2;
                            select = select1 = true;
                            setState(() {});
                          },
                          style: ElevatedButton.styleFrom(
                            primary: select2 == true
                                ? Colors.white12
                                : Color(0xffB14130),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Text(
                            "M",
                            style: GoogleFonts.roboto(
                                fontSize: 26,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25, left: 10,),
            child: Row(
              children: [
                Column(
                  children: [
                    Text(
                      'Price ',
                      style: GoogleFonts.roboto(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                    ),SizedBox(height: 5,),
                    Row(
                      children: [
                        Text(
                          '\$ ',
                          style:
                              GoogleFonts.roboto(fontSize: 30, color: Color(0xffB14130),fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '${widget.item.price}',
                          style:
                              TextStyle(fontSize: 30, color: Colors.white),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(width: 100,),
                SizedBox(
                  height: 50,
                  width: 150,
                  child: ElevatedButton(
                    onPressed: (){
                      setState(() {
                      });
                      Navigator.of(context).pushNamed("chart");
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xffB14130),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ), child: Text('Add to chart',style: GoogleFonts.roboto(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w600
                  ),),
                  )
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
