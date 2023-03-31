import 'package:flutter/material.dart';
import 'package:flutter_template/UC001/screens/login_screen.dart';
import 'package:flutter_template/UC001/screens/notifications_screen.dart';
import 'package:flutter_template/UC001/screens/payment_screen.dart';
import 'package:flutter_template/UC001/screens/notifications_screen2.dart';
import 'package:flutter_template/UC001/screens/payment_options.dart';
import 'package:flutter_template/UC001/screens/payment_options2.dart';
import 'package:flutter_template/UC001/screens/type_of_payment.dart';
import 'package:flutter_template/UC001/screens/profile.dart';
import 'package:flutter_template/UC001/screens/qr_code_payment.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: 'Flutter Demo', 
    home: QRCodePayment(),
    debugShowCheckedModeBanner: false,);
  }
}
