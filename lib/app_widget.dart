import 'package:flutter/material.dart';
import 'package:hello_world/home_page.dart';

class AppWidget extends StatelessWidget {

  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: false,
        ),
      home: HomePage(),
    );
  }
}
