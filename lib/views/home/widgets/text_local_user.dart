import 'package:flutter/material.dart';

class TextLocalUser extends StatelessWidget {

  final String localUser;
  TextLocalUser({this.localUser});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('Sua localização', style: TextStyle(color: Colors.grey[500])),
        Row(
          children: <Widget>[
            Icon(Icons.place, color: Colors.grey[700]),
            SizedBox(width: 8),
            Expanded(
              child: Text(this.localUser == null ? 'Insirá sua localização' : this.localUser, style: TextStyle(color: Colors.grey[700])),
            ),
          ],
        )
      ],
    );
  }
}
