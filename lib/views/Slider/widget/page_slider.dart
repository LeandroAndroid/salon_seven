import 'package:flutter/material.dart';

class PageSlider extends StatelessWidget {
  final String title;
  final String content;
  final String image;

  PageSlider({
    this.title,
    this.content,
    this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(32),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Image(
              image: AssetImage(image),
              width: 300,
              height: 300,
            ),
          ),
          SizedBox(height: 8,),
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            content,
            maxLines: 3,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 15, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
