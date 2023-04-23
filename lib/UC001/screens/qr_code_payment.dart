import 'package:flutter/material.dart';

class QRCodePayment extends StatelessWidget {
  const QRCodePayment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title:
              Row(mainAxisAlignment: MainAxisAlignment.center, children: const [
            Text(
              'QR Code ',
              style: TextStyle(fontSize: 23),
            ),
            SizedBox(width: 59),
          ]),
          toolbarHeight: 80,
          elevation: 0.0,
          backgroundColor: const Color(0xFFE06C57),
          foregroundColor: Colors.white,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 40.0),
                  child: Image.asset(
                    'images/QRExample.png',
                    height: 250,
                    width: 250,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 0,
            ),
            BuildText(text: 'Name: CMKL'),
            const SizedBox(
              height: 25,
            ),
            BuildText(text: 'Account Number:  XXX-XXX-XXXX'),
            const SizedBox(
              height: 155,
            ),
            buildElevatedButton(text: 'Save to gallery', onPressed: () {}),
            const SizedBox(
              height: 25,
            ),
            buildElevatedButton(text: 'Share', onPressed: () {}),
          ],
        ),
      ),
    );
  }
}

Widget buildElevatedButton({
  required String text,
  required VoidCallback onPressed,
}) =>
    SizedBox(
      width: 261,
      height: 55,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: Colors.red[800],
          textStyle: const TextStyle(fontSize: 18),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        child: Text(text),
      ),
    );

// ignore: non_constant_identifier_names
Widget BuildText({
  required String text,
}) =>
    Row(
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: SizedBox(
            width: 20,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Text(
            (text),
            style: const TextStyle(fontSize: 20),
          ),
        ),
      ],
    );
