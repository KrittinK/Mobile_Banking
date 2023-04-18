import 'package:flutter/material.dart';
import 'package:flutter_template/UC001/screens/connect_with_bank_screen.dart';
import 'package:flutter_template/UC001/screens/payment_options2.dart';

class TypeOfPayment extends StatelessWidget {
  const TypeOfPayment({super.key});

  Widget buildContainer({
    required String text,
    required BuildContext context,
    required Widget screen,
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
                          return screen;
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
            buildContainer(
                text: 'Credit Card',
                context: context,
                screen: const PaymentOptions2()),
            buildContainer(
                text: 'Transfer QR Code',
                context: context,
                screen: const PaymentOptions2()),
            buildContainer(
                text: 'Connect With Bank',
                context: context,
                screen: const ConnectBankScreen()),
          ],
        ),
      ),
    );
  }
}
