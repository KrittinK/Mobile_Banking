import 'package:flutter/material.dart';
import 'package:flutter_template/UC001/screens/home.dart';
import 'package:flutter_template/UC001/screens/payment_screen.dart';
import 'package:flutter_template/UC001/screens/qr_code_payment.dart';
import 'package:flutter_template/UC001/screens/transfer_completed.dart';

class PaymentOptions2 extends StatelessWidget {
  const PaymentOptions2({super.key});

  Widget buildContainer({
    required String text,
    required BuildContext context,
  }) =>
      Container(
        color: Colors.red[800],
        height: 100.0,
        padding: const EdgeInsets.all(25.0),
        margin: const EdgeInsets.all(5.0),
        child: Row(children: [
          Text(text,
              style: const TextStyle(
                fontSize: 20.0,
                color: Colors.white,
              )),
          const SizedBox(width: 50),
          Container(
            height: 30,
            width: 60,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.red[900]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return const PaymentScreen();
                        },
                      ),
                    );
                  },
                  child: const Text('Select',
                      style: TextStyle(color: Colors.white)),
                ),
              ],
            ),
          ),
        ]),
      );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Notifications'),
          backgroundColor: Colors.red[800],
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
            buildContainer(text: 'Pay All', context: context),
            buildContainer(text: 'Pay By Installments', context: context),
          ],
        ),
      ),
    );
  }
}
