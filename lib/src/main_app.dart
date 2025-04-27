import 'package:flutter/material.dart';
import 'package:jp_app/src/features/order/presentation/start_screen.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: StartScreen(),
    );
  }
}
