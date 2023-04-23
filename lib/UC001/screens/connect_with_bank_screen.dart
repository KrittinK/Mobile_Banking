import 'package:flutter/material.dart';

class ConnectBankScreen extends StatefulWidget {
  const ConnectBankScreen({Key? key}) : super(key: key);

  @override
  State<ConnectBankScreen> createState() => _ConnectBankScreenState();
}

class _ConnectBankScreenState extends State<ConnectBankScreen> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Row(mainAxisAlignment: MainAxisAlignment.center, children: const [
            Text(
              'Connect with bank',
              style: TextStyle(fontSize: 23),
            ),
            SizedBox(width: 59),
          ]),
          toolbarHeight: 80,
          elevation: 0.0,
          backgroundColor: const Color.fromARGB(255, 224, 108, 87),
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
                    'images/Connect_with_bank.png',
                    height: 200,
                    width: 200,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            BuildExpandedText(
              text: 'Details: __________________________________________________________________________________________________________________________________________________________________________________________________________________',
            ),
            const SizedBox(
              height: 25,
            ),
            BuildExpandedText(
              text: 'Pay 150,000 3 times every 3 months __________________________________________________________________________________________________________________________________________________________________________________________________________',
            ),
            const SizedBox(
              height: 25,
            ),
            const SizedBox(
              height: 20,
            ),
             Row(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.0),
                  child: SizedBox(
                    width: 20,
                  ),
                ),
                Checkbox(
                  value: _isChecked,
                  onChanged: (value) {
                    setState(() {
                      _isChecked = value!;
                    });
                  },
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  visualDensity: VisualDensity.compact,
                  checkColor: Colors.white, // change the color of the checkmark
                  fillColor: MaterialStateProperty.all<Color>(Colors.grey[600]!), // change the background color of the checkbox
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 0.0),
                  child: 
                  Text(
                    'I agree to the terms and conditions',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
           Row(
              children: [
                const SizedBox(
                  width: 300,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(), 
                    padding: const EdgeInsets.all(20),
                    backgroundColor: Colors.red[800],
                    foregroundColor: Colors.black,
                  ),
                  child: const Icon( 
                    Icons.arrow_forward,
                    color: Colors.white,
                    size: 35,
                  ),
                ),
              ],
            ),
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
Widget BuildExpandedText({
  required String text,
}) =>
    Row(
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50.0),
            child: Text(
              (text),
              style: const TextStyle(fontSize: 15),
            ),
          ),
        ),
      ],
    );