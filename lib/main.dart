import 'package:flutter/material.dart';
import 'package:masterclass_flutter_mobx_mvc_mvvm_baltaio/views/signup.view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        primaryColor: Colors.yellow,
        brightness: Brightness.dark,
      ),
      home: SignupView(),
    );
  }
}
