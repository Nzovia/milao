// import 'package:flutter/material.dart';
//
// class HomeCards extends StatelessWidget {
//
//   //card properties
//   final String text;
//   final Icon cardIcons;
//   final ShapeBorder shapeBorder;
//
//   const HomeCards({Key? key, required this.text,
//      required this.cardIcons, required this.shapeBorder}) : super(key: key);
//
//
//   @override
//   Widget build(BuildContext context) => Card(
//     child: Container(
//       padding: const EdgeInsets.symmetric(vertical:16.0, horizontal: 16.0),
//       height: 350,
//       width: 200,
//
//       child:Column(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Text(text, style: const TextStyle(fontSize: 24,
//               fontWeight: FontWeight.w900,
//               color: Colors.black),),
//           Icon(cardIcons, color: Colors.black,size: 24,)
//
//
//         ],
//       ),
//     ),
//
//
//   );
// }
import 'package:flutter/material.dart';
class HomeCards extends StatelessWidget {

  //card properties
  //final Icon icons;
  final String title;
  final Color background;

  const HomeCards({Key? key,
    //required this.icons,
    required this.title,
    required this.background}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child:Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(children: [
        // ClipRRect(
        //   borderRadius: BorderRadius.circular(100),
        //   child: Icon(
        //     Icons.icons,
        //     size: 48,
        //     color: Colors.black,
        //   ),
        // ),
        Container(
          height: 280,
          width: 210,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // FractionallySizedBox(
                //   widthFactor:0.58,
                //   child: FlatButton(
                //       onPressed: () {},
                //       color: Color(0x1AFFFFFF),
                //       shape: RoundedRectangleBorder(
                //           borderRadius: BorderRadius.circular(100.0),
                //           side: const BorderSide(color: Color(0x1AFFFFFF))),
                //       child: Row(
                //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //         children: const <Widget>[
                //           Align(
                //             alignment: Alignment.centerLeft,
                //             child: Icon(
                //               Icons.location_on,
                //               color: Colors.white,
                //             ),
                //           ),
                //           Align(
                //             alignment: Alignment.center,
                //             child: Text(
                //               "Malang",
                //               style:
                //               TextStyle(color: Colors.white, fontSize: 16),
                //             ),
                //           ),
                //         ],
                //       )),
                // ),

                const SizedBox(
                  height: 8,
                ),
                Center(
                    child:Text(
                      title,
                      style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                ),
              ],
            ),
          ),
        ),
      ]),
    ),
    );
  }
}
