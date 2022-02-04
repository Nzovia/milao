
import 'package:flutter/material.dart';

class DataRows extends StatelessWidget {
  final String text1,text2;
  const DataRows({Key? key,
    required this.text1,
    required this.text2}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
     child: Padding(padding: const EdgeInsets.fromLTRB(0.0, 8.0, 0.0, 8.0),
         child:Row(
           crossAxisAlignment: CrossAxisAlignment.end,
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             Text(text1,
               style: const TextStyle(
                 color: Colors.grey,
                 fontSize: 18,
                 fontWeight: FontWeight.w500,
               ),),
             Text(text2,
               style: const TextStyle(
                 color: Colors.black,
                 fontSize: 18,
                 fontWeight: FontWeight.w500,
               ),)
           ],

         ),
      )

    );

  }
}
