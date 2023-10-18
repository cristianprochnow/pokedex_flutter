import 'package:flutter/material.dart';

import 'package:pokedex_flutter/screens/home.dart';
import 'package:pokedex_flutter/screens/details.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pokedéx',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      routes: {
        '/': (context) => const HomeScreen(),
        '/details': (context) => const DetailsScreen()
      },
      initialRoute: '/',
    );
  }
}
