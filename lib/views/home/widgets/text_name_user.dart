import 'package:flutter/material.dart';
import 'package:salon_seven_seven/constants/ui.dart';

class TextNameUser extends StatelessWidget {

  final String name;

  TextNameUser(this.name);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Olá, $name',
      style: TextStyle(
          color: primaryColor,
          fontWeight: FontWeight.w700
      ),
    );
  }
}
