import 'package:flutter/material.dart';
<<<<<<< Updated upstream
//import 'package:flutter_template/UC001/screens/grade.dart';
=======
import 'package:flutter_template/UC001/screens/event.dart';
import 'package:flutter_template/UC001/screens/grade.dart';
>>>>>>> Stashed changes
import 'package:flutter_template/UC001/screens/home.dart';
import 'package:flutter_template/UC001/screens/profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: Grade(),
      debugShowCheckedModeBanner: false,
    );
  }
}
