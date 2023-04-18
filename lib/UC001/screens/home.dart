import 'package:flutter/material.dart';
import 'package:flutter_template/UC001/screens/children_screen.dart';

class Home extends StatelessWidget {
  const Home({super.key});

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
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return const ChildrenScreen();
                    },
                  ),
                );
              },
              child: const Text('University'),
            ),
          ],
        ),
      ),
    );
  }
}
