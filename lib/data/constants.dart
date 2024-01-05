import 'package:flutter/material.dart';

const double transitionLength = 500;

const horizontalPadding = SizedBox(width: 10);
const verticalPadding = SizedBox(height: 10);
const commonPadding = EdgeInsets.symmetric(vertical: 10, horizontal: 16);

enum ColorSeed {
  baseColor('primary', Color(0xff30C6C0)),
  indigo('Indigo', Colors.indigo),
  blue('Blue', Colors.blue),
  teal('Teal', Colors.teal),
  green('Green', Colors.green),
  yellow('Yellow', Colors.yellow),
  orange('Orange', Colors.orange),
  deepOrange('Deep Orange', Colors.deepOrange),
  pink('Pink', Colors.pink);

  const ColorSeed(this.label, this.color);

  final String label;
  final Color color;
}

enum ScreenSelected {
  ui(0),
  color(1),
  typography(2),
  etc(3);

  const ScreenSelected(this.value);

  final int value;
}
