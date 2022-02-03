
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
      body: SingleChildScrollView(
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

            Padding(padding: EdgeInsets.all(16.0),
             child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children:[
                  const SizedBox(
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
                  const SizedBox(width: 10,),
                  ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child:Container(
                          width: 68,
                          color: Colors.white,
                          child:FlatButton(onPressed: (){},
                              child: const Icon(Icons.tune, size: 48, color: Colors.black,))
                      ),
                  )
                ],
              ),
            ),

            //cards list
                SizedBox(
                  height: 170,
                  width: MediaQuery.of(context).size.width,
                  child:Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child:const HomeCards(
                              title: "Upload Your Resume",
                              background: Color(0xFF86AFAE), icons: Icons.upload,),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child:const HomeCards(
                              title: "Create Job Alert",
                              background: Color(0xFFDCEDC8), icons: Icons.notifications,),
                        )
                      ]
                  )
            ),
            const SizedBox(height: 4.0,),
            const Text("Best of List",
              style: TextStyle(color: Colors.black,
                fontWeight: FontWeight.w500, fontSize: 24),),

            SizedBox(
                height: 170,
                width: MediaQuery.of(context).size.width,
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                      const HomeCards(
                        title: "Best Company to work",
                        background: Color(0xFFFBE9E7), icons: Icons.location_city,),

                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child:const HomeCards(
                        title: "Best Job for you",
                        background: Color(0xFFE0F2F1), icons: Icons.manage_search,),
                    )
                  ],
                )
            ),



          ],

        )

      ),
    );
  }
}


