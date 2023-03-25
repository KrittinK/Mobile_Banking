import 'package:flutter/material.dart';

class PaymentOptions extends StatelessWidget {
  const PaymentOptions ({super.key});

  Widget buildContainer({
    required String text,
  }) =>
      Container(
        color: Colors.red,
        height: 100.0,
        padding: const EdgeInsets.all(25.0),
        margin: const EdgeInsets.all(5.0),
        child: Row(
            children: [
              const Icon(Icons.arrow_right,
                  size: 40, color: Colors.white),
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
            buildContainer(text: '4 Years'),
            buildContainer(text: '3 Years'),
            buildContainer(text: 'Per Year'),
            buildContainer(text: 'Per Semester'),
          ],
        ),
      ),
    );
  }
}
