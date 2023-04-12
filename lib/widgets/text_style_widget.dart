import 'package:flutter/material.dart';

class TextStyleWidget extends StatelessWidget {
  const TextStyleWidget(this.cText, {super.key});

  final String cText;

  @override
  Widget build(BuildContext context) {
    return Text(
      cText,
      style: const TextStyle(color: Colors.white, fontSize: 26),
    );
  }
}
