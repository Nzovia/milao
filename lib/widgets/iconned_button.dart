import 'package:flutter/material.dart';

class IconnedButton extends StatelessWidget {
  final IconData? icondataa;
  final String texttitle;
  final Color colors;

  const IconnedButton({Key? key,
    required this.icondataa,
    required this.texttitle,
    required this.colors}) : super(key: key);

  @override
  Widget build(BuildContext context) => FlatButton(
      onPressed: () {},
      child: RichText(
        text: TextSpan(
          children: [
            WidgetSpan(
                child: Icon(icondataa,
                size: 24,
                  color: colors,
                )),
            const WidgetSpan(child: SizedBox(width: 4.0,),),

            TextSpan(
              text: texttitle,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: colors,

              )
            )

          ]

      ),

      ));

}
