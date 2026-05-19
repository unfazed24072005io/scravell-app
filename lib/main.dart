import 'package:flutter/material.dart';
import 'package:four_step_login/screens/MainTestBtn.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
        fontFamily: 'SFProDisplay',
      ),
      title: '4 Step Login',
      debugShowCheckedModeBanner: false,
      home: const Maintestbtn(),
    );
  }
}