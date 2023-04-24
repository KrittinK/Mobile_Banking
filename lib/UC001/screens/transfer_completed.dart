import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TransferCompleteScreen extends StatelessWidget {
  const TransferCompleteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // format the current time using DateFormat
    final currentTime = DateFormat('h:mm a').format(DateTime.now());
    final currentDate = DateFormat('d MMMM').format(DateTime.now());
    final currentYear = DateFormat('yy').format(DateTime.now());

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Row(mainAxisAlignment: MainAxisAlignment.center, children: const [
            Text(
              'Payment Successful',
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
            const SizedBox(
              height: 10,
            ),
            // BuildHeader(text: 'Transfer Completed'),
            //print the present time here
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.start,
            //   children: [
            //     Padding(
            //       padding: const EdgeInsets.symmetric(horizontal: 35.0),
            //       child: Text(
            //         '$currentDate $currentYear $currentTime',
            //         style: const TextStyle(fontSize: 18),
            //       ),
            //     ),
            //   ],
            // ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(40.0),
                  child: Image.asset(
                    'images/paymentsuc.png',
                    height: 525,
                    width: 410,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            // Column(
            //   children: [
            //     const SizedBox(
            //       height: 0,
            //     ),
            //     BuildText(text: 'Transaction ID: '),
            //     const SizedBox(
            //       height: 25,
            //     ),
            //      BuildText(text: 'Amount: '),
            //     const SizedBox(
            //       height: 25,
            //     ),
            //      BuildText(text: 'Fee: '),
            //     const SizedBox(
            //       height: 25,
            //     ),
            //     BuildText(text: 'Note: first payment'),
            //     const SizedBox(image.png
            //       height: 25,
            //     ),
            //   ],
            // ),
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
          backgroundColor: Colors.red[900],
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
            style: const TextStyle(fontSize: 15),
          ),
        ),
      ],
    );

// ignore: non_constant_identifier_names
Widget BuildHeader({
  required String text,
}) =>
    Row(
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 30),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Text(
            (text),
            style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w600, color: Color.fromARGB(255, 129, 128, 128)),
          ),
        ),
      ],
    );
