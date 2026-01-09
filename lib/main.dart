

import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(Container(
    color: Colors.blue,
    child: Center(
      child: Text(
        'Hello, Flutter!',
        textDirection: TextDirection.ltr,
        style: TextStyle(
          color: Colors.white,
          fontSize: 40,
          fontWeight: FontWeight.bold
        ),
      ),
    ),
  ));
}