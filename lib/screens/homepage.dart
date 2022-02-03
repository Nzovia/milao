
import 'package:flutter/material.dart';
import 'package:milao/widgets/card_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFEFEBE9),

      //screen body
      body: Container(
        child:Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16.0, 48.0, 16.0, 24.0),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(Icons.menu_outlined,
                    size: 48,
                    color: Colors.black,
                  ),

                  ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset("images/user.png",
                        height: 50,
                        width: 48,
                        fit: BoxFit.cover,
                      )
                  ),

                ],


              ),

            ),

                SizedBox(
                    width: 150,
                    child: Row(
                      children: [
                        Image.asset("images/finder.png", height: 70, width:64,
                        fit: BoxFit.fill,
                        ),
                        const SizedBox(width: 4.0,),
                        const Text("Milao",  style: TextStyle(
                          color:Colors.black,
                          fontWeight: FontWeight.w700, fontSize: 30,

                        ),
                        )
                      ],
                    ),


                ),

            const Text("You deserve a job",
              style: TextStyle(color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 36),),
            const Text("that loves you back",
              style: TextStyle(color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 36),),

            const SizedBox(height: 12,),
            Row(
              children: const [
                SizedBox(
                  height: 50,
                  width: 250,
                    child:TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search, color: Colors.grey,),
                        hintText: "Search job or companies",
                        fillColor: Colors.white, filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10.0),)
                        ),


                      ),
                    ),
                ),
                SizedBox(width: 12,),
                // IconButton(
                //  //height: 50,
                //  // onPressed: () {  },
                //   icon:  Icon(Icons.tune,
                //     color: Colors.black,
                //     size: 48,
                //   ), onPressed: () {  },
                //
                //
                // ),


              ],

              //adding cards in the screen


            ),
            //cards list
                SizedBox(
                  height: 300,
                  width: MediaQuery.of(context).size.width,
                  child:Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        HomeCards(
                            title: "Upload Your Resume", 
                            background: Color(0xFFE0F2F1)),
                        HomeCards(
                            title: "Create Job Alert",
                            background: Color(0xFFE0F2F1)),
                      ],


                  )
            
            ),
            Text("Best of List", style: TextStyle(),)



          ],

        )

      ),
    );
  }
}


