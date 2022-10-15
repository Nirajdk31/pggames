import 'package:flutter/material.dart';
import 'package:pggames/loginpage.dart';
import 'package:pggames/playoptions.dart';
import 'package:pggames/welcomepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: const WelcomePage(),
    );
  }
}

