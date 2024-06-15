import 'package:coffie_shop/Classs/Product_2.dart';
import 'package:coffie_shop/Classs/item.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Chart extends StatefulWidget {
  const Chart({Key? key}) : super(key: key);

  @override
  State<Chart> createState() => _ChartState();
}

class _ChartState extends State<Chart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.black12,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white12),
            child: IconButton(onPressed: (){
                 Navigator.of(context).pushNamed('home');
            }, icon: Icon(Icons.arrow_back_ios_new)),
          ),
        ),
      ),
       body: ListView.builder(
           itemCount: Item.length,
           itemBuilder: (context, index) =>  Padding(
             padding: const EdgeInsets.symmetric(vertical: 5),
             child: Dismissible(
                 direction: DismissDirection.endToStart,
                 key: Key(Item[index].toString()),
                 background: Container(
                   padding: EdgeInsets.symmetric(horizontal: 4),
                   decoration: BoxDecoration(
                       color: Colors.redAccent,
                       borderRadius: BorderRadius.circular(20)
                   ),
                   child: Row(
                     children: [
                       Spacer(),
                       Image(image: AssetImage("assets/images/13.png"),height: 30,width: 50,)
                     ],
                   ),
                 ),
                 onDismissed: (DismissDirection){
                     Item.remove(index);
                 },
                 child: Main_Product(Item[index])),
           ),),
      bottomNavigationBar: Container(
        height: 100,
        decoration: BoxDecoration(
          color: Colors.white12,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20)  ,
            topRight: Radius.circular(20)
          ),
            boxShadow: [BoxShadow(
              offset: Offset(0, -15),
              color: Colors.white12.withOpacity(0.15)
            )]
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Text('Price',style: GoogleFonts.roboto(
                      fontSize: 28,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold
                  ),),
                  SizedBox(height: 6,),
                  Row(
                    children: [
                      Text('\$',style: GoogleFonts.roboto(
                          fontSize: 26,
                          color: Color(0xffB14130),
                          fontWeight: FontWeight.bold
                      ),),
                      SizedBox(width: 7,),
                      Text('100',style: GoogleFonts.roboto(
                          fontSize: 23,
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                      ),),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(width: 75,),
            SizedBox(
              height: 60,
              width: 170,
              child: ElevatedButton(
                onPressed: (){
                  showDialog(
                      context: context,
                      builder: (BuildContext context){
                       return AlertDialog(
                          title: Text('Are You Sure',style: GoogleFonts.roboto(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 30
                          ),),
                          backgroundColor: Colors.black54,
                          actions: [
                            TextButton(onPressed: (){}, child: Text('Yes',style: GoogleFonts.roboto(
                            fontWeight: FontWeight.bold,
                                color: Color(0xffB14130),
                                fontSize: 20))),
                            TextButton(onPressed: (){
                              Navigator.of(context).pushNamed('chart');
                            }, child: Text('No',style: GoogleFonts.roboto(
                              fontWeight: FontWeight.bold,
                                color: Color(0xffB14130),
                                fontSize: 20))),
                          ],
                         elevation: 100,
                         shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(20)
                         ),
                        );
                      }
                  );
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                  ),
                  primary: Color(0xffB14130)
                ),
                child: Text('Buy Now',style: GoogleFonts.roboto(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                ),),
              ),
            )

          ],
        ),
      ),
    );
  }
}
