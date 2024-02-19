import 'package:flutter/material.dart';
import 'package:omotenashi_cafe/presentation/pages/flash_page/flash_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: FlashPage(),
    );
  }
}
