import 'package:flutter/material.dart';

void main() {
  runApp(const Notifications());
}

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Notifications'),
          backgroundColor: Colors.red,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Column(
          children: [
            const Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(height: 50),
            ),
            Container(
              color: Colors.red,
              height: 100.0,
              padding: const EdgeInsets.all(30.0),
              margin: const EdgeInsets.all(5.0),
              child: const Center(
                  child: Text('Payment form sent to you',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ))),
            ),
            Container(
              color: Colors.red,
              height: 100.0,
              padding: const EdgeInsets.all(30.0),
              margin: const EdgeInsets.all(5.0),
              child: const Center(
                  child: Text('Payment form sent to parent',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ))),
            ),
          ],
        ),
      ),
    );
  }
}