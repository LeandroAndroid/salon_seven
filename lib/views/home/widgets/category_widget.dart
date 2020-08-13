import 'package:flutter/material.dart';
import 'package:salon_seven_seven/models/category.dart';

class CategoryWidget extends StatelessWidget {
  final Category category;

  CategoryWidget({this.category});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: Container(
            width: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(80),
              color: this.category.color,
            ),
            child: Center(
              child: Container(
                height: 30,
                child: Image.asset(category.icon, fit: BoxFit.cover,),
              ),
            ),
          ),
        ),
        Text(
          category.label,
          style: TextStyle(
            color: this.category.color,
          ),
        )
      ],
    );
  }
}
