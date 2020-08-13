import 'package:flutter/material.dart';
import 'package:salon_seven_seven/constants/ui.dart';

class LabelCustom extends StatelessWidget {
  final String label;

  LabelCustom({@required this.label});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Text(
        label,
        textAlign: TextAlign.start,
        maxLines: 1,
        style: TextStyle(
          color: primaryColor,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
