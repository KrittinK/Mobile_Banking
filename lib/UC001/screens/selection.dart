import 'package:flutter/material.dart';
import 'package:flutter_template/UC001/screens/event.dart';
import 'package:flutter_template/UC001/screens/profile.dart';

class Selection extends StatelessWidget {
  const Selection({super.key});

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
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return const Profile();
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
                      return const Profile();
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
                      return const Profile();
                    },
                  ),
                );
              },
              child: const Text('Event'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return const Profile();
                    },
                  ),
                );
              },
              child: const Text('Profile'),
            ),
          ],
        ),
      ),
    );
  }
}
