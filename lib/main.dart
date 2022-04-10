import 'package:flutter/material.dart';
import 'dart:core';

import 'package:magic_8_ball/home.dart';

void main() {
  runApp(Controller());
}

class Controller extends StatelessWidget {
  const Controller({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const HomePage(),
    );
  }
}

