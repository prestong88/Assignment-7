import 'package:flutter/material.dart';
import 'screens/home_page.dart';

void main() => runApp(CoinFlipApp());

class CoinFlipApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CoinFlipApp',
      home: HomePage(),
    );
  }

}