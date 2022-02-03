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
  final IconData? icons;
  final String title;
  final Color background;

  const HomeCards({Key? key,
    required this.icons,
    required this.title,
    required this.background}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child:Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(

        child:Container(
          height: 150,
          width: 150,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                 backgroundColor: Colors.grey,
                  child: Icon(
                    icons,
                    size: 36,
                    color: Colors.black,
                  ),
                ),

                const SizedBox(
                  height: 8,
                ),
                Align(
                  alignment: FractionalOffset.bottomCenter,
                    child:Text(
                      title,
                      style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
    );
  }
}
