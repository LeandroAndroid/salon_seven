import 'package:flutter/material.dart';
import 'package:salon_seven_seven/constants/ui.dart';

class SalonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      //clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(8),
            topLeft: Radius.circular(8),
          ),
          border: Border.all(color: Colors.grey[300], width: 1)),
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 4,
            child: Container(
              width: 200,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(8),
                  topLeft: Radius.circular(8),
                ),
              ),
              child: Image.network(
                'https://www.correiodominho.pt/images/117436_800x800.jpg',
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              padding: const EdgeInsets.all(4),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          'Barber & Care',
                          maxLines: 1,
                          overflow: TextOverflow.visible,
                          style: TextStyle(
                              color: primaryColor, fontWeight: FontWeight.w800),
                        ),
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                      Text('4.5')
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.place,
                        color: Colors.grey[700],
                      ),
                      Expanded(
                        child: Text(
                          'Osasco - SP',
                          maxLines: 1,
                          overflow: TextOverflow.visible,
                          style: TextStyle(
                              color: Colors.grey[700], fontWeight: FontWeight.w700),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
