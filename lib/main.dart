import 'package:flutter/material.dart';
import 'package:flutter_template/UC001/screens/children_screen.dart';
import 'package:flutter_template/UC001/screens/login_screen.dart';
import 'package:flutter_template/UC001/screens/payment_screen.dart';
import 'package:flutter_template/UC001/screens/notifications_screen.dart';
import 'package:flutter_template/UC001/screens/payment_options.dart';
import 'package:flutter_template/UC001/screens/payment_options2.dart';
import 'package:flutter_template/UC001/screens/qr_code_payment.dart';
import 'package:flutter_template/UC001/screens/type_of_payment.dart';
import 'package:flutter_template/UC001/screens/profile.dart';
import 'package:flutter_template/UC001/screens/event.dart';
import 'package:flutter_template/UC001/screens/connect_with_bank_screen.dart';
import 'package:flutter_template/UC001/screens/transfer_completed.dart';
import 'package:flutter_template/UC001/screens/home.dart';
import 'package:flutter_template/UC001/screens/selection.dart';
import 'package:flutter_template/UC001/screens/grade.dart';
import 'package:flutter_template/UC001/screens/loading_CMKL.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: ConnectBankScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
