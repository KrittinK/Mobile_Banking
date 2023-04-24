import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  Widget buildContainer({
    required String text,
    required IconData icon,
    required double size,
    required Color color,
  }) =>
      Container(
        color: const Color(0xFFD75560),
        height: 100.0,
        padding: const EdgeInsets.all(25.0),
        margin: const EdgeInsets.all(5.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(
              icon,
              size: size,
              color: color,
            ),
            const SizedBox(width: 20),
            Text(text,
                style: const TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                )),
          ],
        ),
      );

  Widget buildContainerImage({
    required String text,
    required String image,
    required Color color,
  }) =>
      Container(
        color: const Color(0xFFD75560),
        height: 100.0,
        padding: const EdgeInsets.all(25.0),
        margin: const EdgeInsets.all(5.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(image),
            const SizedBox(width: 20),
            Text(text,
                style: const TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                )),
          ],
        ),
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
            const SizedBox(height: 20),
            buildContainerImage(
                text: 'Payment Form Sent To Parent',
                image: 'images/Events/payment_form.png',
                color: const Color(0xFF313C42)),
            buildContainerImage(
                text: 'Payment Form Sent To Parent',
                image: 'images/Events/payment_form.png',
                color: const Color(0xFF313C42)),
            buildContainer(
                text: 'Payment Success!',
                icon: Icons.check_circle_outline_rounded,
                size: 40,
                color: Colors.green),
            Row(
              children: [
                Expanded(
                  child: Container(
                    color: const Color(0xFFD75560),
                    height: 100.0,
                    padding: const EdgeInsets.all(25.0),
                    margin: const EdgeInsets.all(5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Icon(Icons.event_note,
                            size: 40, color: Color(0xFF313C42)),
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
