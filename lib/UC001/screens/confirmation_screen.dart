import 'package:flutter/material.dart';

class ScrollableImagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            Image.asset(
              'https://via.placeholder.com/500x1000',
              width: double.infinity,
              height: 1000.0,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}
  