import 'package:flutter/material.dart';

class PostItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Image.asset(
              'assets/images/download.jpeg',
              width: 60,
              height: 60,
            ),
            SizedBox(width: 50),
            Text(
              'Bob Cat',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ],
        ),
        Image.asset(
          'assets/images/download.jpeg',
        ),
        Text('heloo cat '),
      ],
    );
  }
}
