import 'package:coffie_shop/Classs/item.dart';
import 'package:flutter/material.dart';

class Product extends StatelessWidget {
  // final String image;
  // final String text;
  // final String price;
  //
  // Product({required this.image ,required this.text ,required this.price}) ;

    final  Items  item;
    final GestureTapCallback press;

  Product( {required Items this.item , required this.press});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: GestureDetector(
          onTap: press,
          child: Container(
              //height: 250,
             // width: 150,
              decoration: BoxDecoration(
                color: Colors.white10,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child:Image(image: AssetImage(item.image), width: 180,),
                ),
                //SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left: 15,bottom: 5,top: 8),
                  child: Text(item.name,style: TextStyle(color: Colors.white,fontSize: 18,),),
                ),
               // SizedBox(height: 5,),
                SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10,top: 1.5),
                    child: Row(
                      children: [
                        Text("\$"
                            ,style: TextStyle(color: Color(0xffB14130),fontSize: 20),),
                        Text(" ${item.price}"
                          ,style: TextStyle(color: Colors.white,fontSize: 20),),
                        SizedBox(width: 34,),
                        IconButton(
                            onPressed: (){
                              Navigator.of(context).pushNamed('chart');
                            },
                            icon: Icon(Icons.add_box),color: Colors.white,)
                      ],
                    ),
                  ),
                )
          ],
          ),
          ),
        ),
      ),

    );
  }
}
