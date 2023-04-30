import 'package:flutter/material.dart';

class LoadingCmkl extends StatelessWidget {
  const LoadingCmkl({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image(
                image: AssetImage('images/CMKL-logo.png'),
                height: 300,
                width: 300,
              ),
            ),
            SizedBox(height: 10),
            Text('Welcome to CMKL University',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                )),
          ],
        ),
      ),
    );
  }
}
