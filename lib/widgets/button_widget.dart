import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  //Button properties
  final String buttonText;

  const ButtonWidget({Key? key, required this.buttonText}) : super(key: key);

  @override
  Widget build(BuildContext context) => FlatButton(
        color: Colors.transparent,
        onPressed: () {},
        child: Text(
          buttonText,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        ),
      );
}
