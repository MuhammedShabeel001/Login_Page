import 'package:flutter/material.dart';
import 'package:login/screens/spash.dart';

const keyValue = 'userLogged';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Sample',
      theme: ThemeData(
        primarySwatch: Colors.purple),
      home: const ScreenSplash(),
    );
  }
}