import 'package:coffie_shop/Classs/item.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Main_Product extends StatelessWidget {
  final Items item ;
   Main_Product(Items this.item);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30,left: 20),
      child: Container(
        // height: 150,
        // width: 150,
        decoration: BoxDecoration(
            color: Colors.white12,
            borderRadius: BorderRadius.circular(20)
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image(image: AssetImage(item.image),width: 170,),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(item.name,style: GoogleFonts.roboto(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w600
                      ),),
                      SizedBox(width: 5,),
                      //IconButton(onPressed: (){}, icon: Icon(Icons.remove_circle),color: Colors.white,)
                    ],
                  ) ,
                  SizedBox(height: 40,),
                  Row(
                    children: [
                      Text('Price',style: GoogleFonts.roboto(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey
                      ),),
                      SizedBox(width: 40,),
                      Text('\$',style: GoogleFonts.roboto(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Color(0xffB14130)
                      ),),
                      SizedBox(width: 5,),
                      Text("${item.price}",style: GoogleFonts.roboto(
                        color: Colors.white,
                        fontSize: 25
                      ),)
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
