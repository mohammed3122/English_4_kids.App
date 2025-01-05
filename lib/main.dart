import 'package:flutter/material.dart';
import 'package:learn_english/screens/home_screen.dart';

void main() {
  runApp(const LearnEnglishApp());
}

class LearnEnglishApp extends StatelessWidget {
  const LearnEnglishApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
