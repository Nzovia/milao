// import 'package:flutter/material.dart';
//
// class Companies extends StatelessWidget {
//
//   //card properties
//   final String text;
//   final RichText rating, location, vacancy;
//   final Image logo;
//   const Companies({Key? key,
//     required this.text,
//     required this.rating,
//     required this.location,
//     required this.vacancy,
//     required this.logo})
//       : super(key: key);
//
//   @override
//   Widget build(BuildContext context) => Card(
//     elevation: 5,
//     shape: RoundedRectangleBorder(
//       borderRadius: BorderRadius.circular(10),
//     ),
//     child: Row(
//       children: [
//         Image.asset("assets/headphones.jpeg",
//             height: 80, width: 90),
//         Padding(
//           padding: const EdgeInsets.only(left: 8),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: const [
//               Align(
//                 alignment: Alignment.topLeft,
//                 child: Text(
//                   "Music Jamming Outdoor",
//                   style: TextStyle(
//                       fontSize: 20,
//                       fontWeight: FontWeight.w500,
//                       color: Color(0xFF1D1B1D)),
//                 ),
//               ),
//               Align(
//                 alignment: Alignment.topLeft,
//                 child: Text(
//                   "Januari 23, 2022",
//                   style: TextStyle(
//                       fontSize: 12,
//                       fontWeight: FontWeight.w500,
//                       color: Color(0xFF1D1B1D)),
//                 ),
//               ),
//               Align(
//                 alignment: Alignment.topLeft,
//                 child: Text(
//                   "Free",
//                   style: TextStyle(
//                       fontSize: 20,
//                       fontWeight: FontWeight.w500,
//                       color: Color(0xFF1D1B1D)),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ],
//     ),
//   );
// }
