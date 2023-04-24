import 'package:flutter/material.dart';
import 'package:flutter_template/UC001/screens/connect_with_bank_screen.dart';
import 'package:flutter_template/UC001/screens/payment_screen.dart';
import 'package:flutter_template/UC001/screens/transfer_completed.dart';
import 'package:flutter_template/UC001/screens/type_of_payment.dart';

class PaymentOptions2 extends StatelessWidget {
  const PaymentOptions2({super.key});

  Widget buildContainer(
          {required String text,
          required BuildContext context,
          required String image,
          required Widget screen,
          required}) =>
      Container(
        height: 100.0,
        padding: const EdgeInsets.all(25.0),
        margin: const EdgeInsets.all(5.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: const Color(0xFFD75560)),
        child: Row(children: [
          Image.asset(image),
          const SizedBox(width: 30),
          Text(text,
              style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              )),
          const SizedBox(width: 40),
          const Spacer(flex: 1),
          Container(
            height: 30,
            width: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xFFFFE790),
              boxShadow: const [
                BoxShadow(
                  color: Color.fromARGB(50, 0, 0, 0),
                  blurRadius: 4,
                  offset: Offset(4, 8), // Shadow position
                ),
              ],
            ),
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
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.normal)),
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
          title: const Text('Payment Options'),
          backgroundColor: const Color(0xFFE06C57),
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
              text: 'Pay All',
              context: context,
              image: 'images/payment_options2/pay_all.png',
              screen: const TypeOfPayment(),
            ),
            buildContainer(
              text: 'Pay By Installments',
              context: context,
              image: 'images/payment_options2/pay_by_installment.png',
              screen: const TypeOfPayment(),
            ),
          ],
        ),
      ),
    );
  }
}
