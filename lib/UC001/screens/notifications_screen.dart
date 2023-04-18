import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  Widget buildContainer({
    required String text,
  }) =>
      Container(
        color: Colors.red[800],
        height: 100.0,
        padding: const EdgeInsets.all(30.0),
        margin: const EdgeInsets.all(5.0),
        child: Center(
            child: Text(text,
                style: const TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ))),
      );

  @override
  Widget build(BuildContext context) {
    //final date = http.request(./date);
    //Text('f$date',
    DateTime date = DateTime.now();
    var today = DateTime.parse(date.toString());
    var formatToday = DateFormat.yMMMd().format(today);
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
            const SizedBox(height: 20),
            buildContainer(text: 'Payment Form Sent To You'),
            buildContainer(text: 'Payment Form Sent To Parent'),
            Container(
              color: Colors.red[800],
              height: 100.0,
              padding: const EdgeInsets.all(25.0),
              margin: const EdgeInsets.all(5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Icon(Icons.check_circle_outline,
                      size: 40, color: Colors.green),
                  SizedBox(width: 20),
                  Text('Payment Success!',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      )),
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.red[800],
                    height: 100.0,
                    padding: const EdgeInsets.all(25.0),
                    margin: const EdgeInsets.all(5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Icon(Icons.event_note,
                            size: 40, color: Colors.white),
                        const SizedBox(width: 20),
                        Column(
                          children: [
                            const Text('New Event',
                                style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.white,
                                )),
                            Text(formatToday,
                                style: const TextStyle(
                                  fontSize: 15.0,
                                  color: Colors.white,
                                )),
                          ],
                        ),
                      ],
                    ),
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
