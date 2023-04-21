import 'package:flutter/material.dart';

class LoadingCMKL extends StatelessWidget {
  const LoadingCMKL({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
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
