import 'package:flutter/material.dart';


class CompaniesList extends StatefulWidget {
  const CompaniesList({Key? key}) : super(key: key);

  @override
  _CompaniesListState createState() => _CompaniesListState();
}

class _CompaniesListState extends State<CompaniesList> {
  @override
  Widget build(BuildContext context) {
    //list of the cards data
    final Size size = MediaQuery.of(context).size;
    List companydata = [
      {
        "title": "Amazon.com",
        "imageUrl": "images/amazon.jpeg",
        "rating": "4.8",
        "location": "New york, USA",
        "vacancy": "1 Vacancy"
      },
      {
        "title": "Bank of America",
        "imageUrl": "images/bankofamerica.png",
        "rating": "4.3",
        "location": "Birmngham, UK",
        "vacancy": "3 Vacancy"
      },
      {
        "title": "Comcast",
        "imageUrl": "images/comcast.png",
        "rating": "4.1",
        "location": "Montreal,Quebec",
        "vacancy": "1 Vacancy"
      },
      {
        "title": "Dell Technologies",
        "imageUrl": "images/dell.jpeg",
        "rating": "3.9",
        "location": "New york, USA",
        "vacancy": "2 Vacancy"
      },
      {
        "title": "Emerson Electric",
        "imageUrl": "images/electric.png",
        "rating": "3.8",
        "location": "Liverpool, UK",
        "vacancy": "0 Vacancy"
      },
      {
        "title": "FedEx",
        "imageUrl": "images/companies.jpg",
        "rating": "2.6",
        "location": "New york, USA",
        "vacancy": "1 Vacancy"
      },
      {
        "title": "Starbucks",
        "imageUrl": "images/starbucks.png",
        "rating": "1.7",
        "location": "Toronto,Ontario",
        "vacancy": "1 Vacancy"
      },
    ];

    return Scaffold(
      //color of the entire screen
      backgroundColor: const Color(0XFFEFEBE9),

      //app's appBar
      appBar: AppBar(
        backgroundColor: const Color(0XFFEFEBE9),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            //navigate back to home
            Navigator.pop(context);
          },
        ),
        actions: const [
          Icon(
            Icons.search,
            color: Colors.black,
            size: 48,
          )
        ],
      ),

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
          child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 24, 16, 48),
        child: Column(
          children: [
            Row(
              //add padding,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Companies",
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 24,
                      color: Colors.black,
                    ),
                  ),
                ),
                FlatButton(
                    onPressed: () {},
                    color: Colors.green,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: const BorderSide(color: Colors.blueGrey)),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: Row(
                      children: const [
                        Text(
                          "WorldWide",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        Icon(
                          Icons.tune,
                          size: 24,
                          color: Colors.white,
                        )
                      ],
                    )),
              ],
            ),
            ListView(
                 scrollDirection: Axis.vertical,
                 shrinkWrap: true,
                children: companydata.map((e) {
                  return buildCard(
                    e['title'],
                    e['imageUrl'],
                    e['rating'],
                    e['location'],
                    e['vacancy'],
                  );
                }).toList(),
              ),

          ],
        ),
      )),
    );
  }

  Widget buildCard(title, imageurl, rating, location, vacancy) => Padding(
        padding: const EdgeInsets.all(4.0),
        child: Container(
          height: 100,
          child: Card(
            elevation: 0.2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                Image.asset(imageurl, height: 80, width: 80),
                Padding(
                  padding: const EdgeInsets.only(left: 4.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF1D1B1D)),
                      ),
                      const SizedBox(height: 4.0,),
                      RichText(
                          text: TextSpan(children: [
                        const WidgetSpan(
                            child: Icon(
                          Icons.star_rate_outlined,
                              size: 20,
                          color: Colors.orangeAccent,
                        )),
                        TextSpan(
                          text: rating,
                          style: const TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w300,
                              fontSize: 18),
                        ),
                      ])),
                      const SizedBox(height: 4.0,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          RichText(
                            text: TextSpan(children: [
                              const WidgetSpan(
                                child: Icon(
                                  Icons.location_on,
                                  size: 20,
                                  color: Colors.blue,
                                ),
                              ),
                              TextSpan(
                                text: location,
                                style: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey),
                              ),
                            ]),
                          ),
                          const SizedBox(width: 12.0,),
                          RichText(
                            text: TextSpan(children: [
                              const WidgetSpan(
                                child: Icon(
                                  Icons.card_travel,
                                  size: 20,
                                  color: Colors.green,
                                ),
                              ),
                              TextSpan(
                                text: vacancy,
                                style: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey),
                              ),
                            ]),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}
