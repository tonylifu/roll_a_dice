import 'package:flutter/material.dart';

class TextStyleWig extends StatelessWidget {
  final String messageString;
  const TextStyleWig(this.messageString, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      messageString,
      style: const TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 48,
      ),
    );
  }
}
