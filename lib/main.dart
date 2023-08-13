import 'package:flutter/material.dart';
import 'flash_screen.dart';

void main() {
  runApp(FlashlightApp());
}

class FlashlightApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flashlight App',
      theme: ThemeData(
        primarySwatch: Colors.blue,

      ),
      initialRoute: '/',
      routes: {
        '/': (context) => FlashlightScreen(),
      },
    );
  }
}
