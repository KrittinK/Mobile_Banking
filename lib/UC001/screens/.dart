import 'package:flutter/material.dart';

class TypeOfPayment extends StatelessWidget {
  const TypeOfPayment({super.key});

  Widget buildContainer({
    required String text,
  }) =>
      Container(
        color: Colors.red,
        height: 100.0,
        padding: const EdgeInsets.all(25.0),
        margin: const EdgeInsets.all(5.0),
        child: Row(children: [
          Text(text,
              style: const TextStyle(
                fontSize: 20.0,
                color: Colors.white,
              )),
        ]),
      );

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
            buildContainer(text: 'Credit Card'),
            buildContainer(text: 'Transfer QR Code'),
            buildContainer(text: 'Connect With Bank'),
          ],
        ),
      ),
    );
  }
}
