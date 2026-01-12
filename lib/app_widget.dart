import 'package:flutter/material.dart';
import 'package:hello_world/app_controller.dart';
import 'package:hello_world/home_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (context, child) {
        return MaterialApp(
          theme: ThemeData(
            primarySwatch: Colors.red,
            brightness: AppController.instance.isDarkTheme
                ? Brightness.dark
                : Brightness.light,
            useMaterial3: false,
          ),
          home: HomePage(),
        );
      },
    );
  }
}
