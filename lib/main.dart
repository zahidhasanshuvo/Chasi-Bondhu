import 'package:chasi_bondhu/welcomeScreen.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const ChasiBondhu());
}

class ChasiBondhu extends StatelessWidget {
  const ChasiBondhu({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),
    );
  }
}
