import 'package:flutter/material.dart';
import 'package:kalpana/screens/home.dart';
import 'package:kalpana/screens/new_thought.dart';
import 'package:kalpana/screens/thought_details.dart';
import 'package:kalpana/theme/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MaterialColor colorCustom = MaterialColor(0xFF000000, color);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: HomeScreen()
      )
    );
  }
}
