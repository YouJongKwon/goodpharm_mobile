
import 'package:flutter/material.dart';

class GpTextField extends StatelessWidget {
  final String inputHint;

  const GpTextField( this.inputHint, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: inputHint,
        ),
      ),
    );
  }

}
