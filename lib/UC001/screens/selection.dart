import 'package:flutter/material.dart';
import 'package:flutter_template/UC001/screens/children_screen.dart';
import 'package:flutter_template/UC001/screens/event.dart';
import 'package:flutter_template/UC001/screens/notifications_screen.dart';
import 'package:flutter_template/UC001/screens/payment_options.dart';
import 'package:flutter_template/UC001/screens/profile.dart';
import 'package:flutter_template/UC001/screens/grade.dart';

class Selection extends StatelessWidget {
  const Selection({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          //title: const Text('Notifications'),
          backgroundColor: Colors.red[800],
          leading: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                icon: const Icon(Icons.person),
                onPressed: () {
                  //push to profile.dart
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return const Profile();
                      },
                    ),
                  );
                },
              ),
              const Spacer(flex: 1),
              IconButton(
                icon: const Icon(Icons.notifications),
                onPressed: () {
                  //push to notifications.dart
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return const NotificationsScreen();
                      },
                    ),
                  );
                },
              ),
            ],
          ),
          leadingWidth: 500,
        ),
        body: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return const PaymentOptions();
                    },
                  ),
                );
              },
              child: const Text('Pay'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return const Grade();
                    },
                  ),
                );
              },
              child: const Text('Grade'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return const Event();
                    },
                  ),
                );
              },
              child: const Text('Event'),
            ),
          ],
        ),
      ),
    );
  }
}
