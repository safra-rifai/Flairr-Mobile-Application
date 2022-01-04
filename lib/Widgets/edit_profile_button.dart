import 'package:flutter/material.dart';

class EditButtonWidget extends StatelessWidget{
  final String text;
  final VoidCallback onClicked;

  const EditButtonWidget({
    Key? key,
    required this.text,
    required this.onClicked,
    }) : super(key: key);

  @override
  Widget build(BuildContext context) => ElevatedButton(
    style: ElevatedButton.styleFrom(
      shape: StadiumBorder(),
      onPrimary: Colors.white,
      primary: Colors.indigo[800],
      padding: EdgeInsets.symmetric(horizontal: 26, vertical: 10),
    ),
    child: Text(text),
    onPressed: onClicked,
  );
}

