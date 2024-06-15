import 'package:coffie_shop/Add_chart.dart';
import 'package:coffie_shop/Classs/item.dart';
import 'package:coffie_shop/Classs/product.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool select1 = true;
  bool select2 = false;
  bool select3 = false;
  bool select4 = false;
  bool select5 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black12,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Row(
            children: [
              SizedBox(
                height: 65,
                width: 65,
                child: TextButton(
                  style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)
                    )
                  ),
                  onPressed: (){
                    Navigator.of(context).pushNamed('profile');
                    setState(() {});
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                      child: Image(image: AssetImage("assets/images/12.png"),fit: BoxFit.fill,)),

                  ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 75),
                child: Text(
                  'coffee',
                  style: GoogleFonts.playball(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
            ],
          ),
          backgroundColor: Colors.black12,
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('Login');
                },
                icon: Icon(Icons.logout)),
          ],
        ),
        body: Column(children: [
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 10),
            child: Row(
              children: [
                Text(
                  "Find the best \n"
                  "coffee for you",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 12, left: 12),
            child: SearchBar(
              shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15))),
              hintText: "Find your coffee........",
              hintStyle: MaterialStatePropertyAll(
                  TextStyle(color: Colors.white12, fontSize: 18)),
              backgroundColor: MaterialStatePropertyAll(Colors.white10),
              textStyle:
                  MaterialStatePropertyAll(TextStyle(color: Colors.white)),
              leading: Icon(
                Icons.search_outlined,
                color: Colors.white12,
              ),
            ), 
          ),SizedBox(height: 10,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                    TextButton(
                        onPressed: (){
                          select1 = !select1;
                          select2 = select3 = select4 = select5 = false;
                          setState(() {});
                        },
                        child: Text('Cappuuchino',style: TextStyle(
                          fontSize: 17,
                          color: select1 == true ? Color(0xffB14130) : Colors.white
                        ),)),
                TextButton(
                    onPressed: (){
                      select2 = !select2;
                      select1 = select3 = select4 = select5 = false;
                      setState(() {});
                    },
                    child: Text('Coffee',style: TextStyle(
                        fontSize: 17,
                        color: select2 == true ? Color(0xffB14130) : Colors.white
                    ),)),

                TextButton(
                    onPressed: (){
                      select3 = !select3;
                      select2 = select1 = select4 = select5 = false;
                      setState(() {});
                    },
                    child: Text('Late',style: TextStyle(
                        fontSize: 17,
                        color: select3 == true ? Color(0xffB14130) : Colors.white
                    ),)),

                TextButton(
                    onPressed: (){
                      select4 = !select4;
                      select2 = select3 = select1 = select5 = false;
                      setState(() {});
                    },
                    child: Text('Ice coffee',style: TextStyle(
                        fontSize: 17,
                        color: select4 == true ? Color(0xffB14130) : Colors.white
                    ),)),
                TextButton(
                    onPressed: (){
                      select5 = !select5;
                      select2 = select3 = select4 = select1 = false;
                      setState(() {});
                    },
                    child: Text('Cappuuchino',style: TextStyle(
                        fontSize: 17,
                        color: select5 == true ? Color(0xffB14130) : Colors.white
                    ),)),
              ],
        ),),
          SizedBox(
            height: 10,
          ),
          Expanded(
              child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GridView.builder(
                      itemCount: Item.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        //crossAxisSpacing: 20,
                        childAspectRatio: 0.678,
                      ),
                      itemBuilder: (context, index) =>
                            Product(
                            item: Item[index],
                            press: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => Add_chart(Item[index]),));
                              setState(() {});
                            })
                      )))
        ]));
  }
}
